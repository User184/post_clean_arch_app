import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:placeholder_test/main.dart';
import 'package:placeholder_test/src/push_notification/domain/entities/message.dart';
import 'package:placeholder_test/src/push_notification/domain/useCases/getMessageBacground.dart';
import 'package:placeholder_test/src/push_notification/domain/useCases/getMessageForeground.dart';

part 'push_bloc.freezed.dart';

enum Activity { unknown, detail }

@freezed
class PushEvent with _$PushEvent {
  const PushEvent._();
  const factory PushEvent.init() = Init;
  const factory PushEvent.receive({Message? message}) = Receive;
  const factory PushEvent.changeStatus() = ChangeStatus;
}

@freezed
class PushState with _$PushState {
  const PushState._();
  const factory PushState.valueObject({
    @Default(Activity.unknown) Activity status,
    Message? message,
  }) = _State;
}

class PushBloc extends Bloc<PushEvent, PushState> {
  final GetMassageBackground _getMassageBackground;
  final GetmessageForeground _getmessageForeground;
  late StreamSubscription<Message> backgroundSubscription;
  late StreamSubscription<Message> foregroundSubscription;

  PushBloc({
    required GetMassageBackground getMassageBackground,
    required GetmessageForeground getmessageForeground,
  })  : _getMassageBackground = getMassageBackground,
        _getmessageForeground = getmessageForeground,
        super(const PushState.valueObject()) {
    on<Init>(_onInitRemoteMessage);
    on<Receive>(_onReceiveMessage);
    on<ChangeStatus>(_onResetStatus);
    add(const PushEvent.init());
    _subscraibeMessage();
  }

  Future<void> _onInitRemoteMessage(Init event, Emitter<PushState> emit) async {
    await _getMassageBackground.initMessage();
    await _getmessageForeground.initForegroundMassage();

    // Get any messages which caused the application to open from
    // a terminated state.
    final initialMessage = _getMassageBackground.terminatedStateMessage;

    if (initialMessage != null) {
      emit(state.copyWith(
        message: initialMessage,
        status: Activity.detail,
      ));
    }
  }

  Future<void> _onReceiveMessage(Receive event, Emitter<PushState> emit) async {
    final message = event.message;
    emit(state.copyWith(
      message: message,
      status: Activity.detail,
    ));
  }

  Future<void> _onResetStatus(
      ChangeStatus event, Emitter<PushState> emit) async {
    if (state.status == Activity.unknown) {
      return;
    }
    emit(state.copyWith(status: Activity.unknown));
  }

  Future<void> _subscraibeMessage() async {
    // A Stream Subscription a RemoteMessage when the application is
    // opened from a background state.
    backgroundSubscription = _getMassageBackground.subscriptionRemoteMessage(
      handleBackgroundMessage,
    );

    // A Stream Subscription a RemoteMessage when the application is
    // opened from a foreground state.
    foregroundSubscription = _getmessageForeground
        .subscriptionRemoteMessage(handleForegroundMessage);
  }

  void handleBackgroundMessage(Message message) {
    log.i('object22: PushBloc, _subscribe/handleBackgroundMessage: ${message}');
    add(const PushEvent.changeStatus());
    add(PushEvent.receive(message: message));
  }

  void handleForegroundMessage(Message message) {
    log.i('object22: PushBloc, _subscribe/handleForegroundMessage: ${message}');
    add(const PushEvent.changeStatus());
    add(PushEvent.receive(message: message));
  }
}
