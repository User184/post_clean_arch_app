import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:placeholder_test/main.dart';
import 'package:placeholder_test/src/push_notification/domain/useCases/getMessageBacground.dart';

part 'push_bloc.freezed.dart';

enum Activity { unknown, detail }

@freezed
class PushEvent with _$PushEvent {
  const PushEvent._();
  const factory PushEvent.subscription() = Subscription;
  const factory PushEvent.receive() = Receive;
  const factory PushEvent.changeStatus() = ChangeStatus;
}

@freezed
class PushState with _$PushState {
  const PushState._();
  const factory PushState.valueObject({
    @Default(Activity.unknown) Activity status,
  }) = _State;
}

class PushBloc extends Bloc<PushEvent, PushState> {
  final GetMassageBackground _getMassageBackground;
  late StreamSubscription<RemoteMessage> subscription;

  PushBloc({
    required GetMassageBackground getMassageBackground,
  })  : _getMassageBackground = getMassageBackground,
        super(const PushState.valueObject()) {
    on<Subscription>(_onInitRemoteMessage);
    on<Receive>(_onReceiveMessage);
    on<ChangeStatus>(_onResetStatus);
    add(const PushEvent.subscription());
    _subscraibeMessage();
  }

  Future<void> _onInitRemoteMessage(
      Subscription event, Emitter<PushState> emit) async {
    await _getMassageBackground.initMessage();

    // Get any messages which caused the application to open from
    // a terminated state.
    final initialMessage = _getMassageBackground.initialMessage;

    if (initialMessage != null) {
      emit(state.copyWith(status: Activity.detail));
    }
  }

  Future<void> _onReceiveMessage(Receive event, Emitter<PushState> emit) async {
    emit(state.copyWith(status: Activity.detail));
  }

  Future<void> _onResetStatus(
      ChangeStatus event, Emitter<PushState> emit) async {
    if (state.status == Activity.unknown) {
      return;
    }
    emit(state.copyWith(status: Activity.unknown));
  }

  void _subscraibeMessage() {
    add(const PushEvent.changeStatus());
    void handleMessage(RemoteMessage message) {
      log.i('PushBloc, _subscribe/handleMessage: $message');
      add(const PushEvent.receive());
    }

    // Get any messages which caused the application to open from
    // a terminated state.
    final RemoteMessage? remoteMessage = _getMassageBackground.initialMessage;
    if (remoteMessage != null) {
      handleMessage(remoteMessage);
    }
    subscription = _getMassageBackground.onMessageOpenedApp.listen(
      handleMessage,
      onError: (error) => log.e('PushBloc, error _subscribe: $error'),
    );
  }
}
