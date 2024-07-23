import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:placeholder_test/src/posts/domain/useCases/get_comments.dart';
import 'package:placeholder_test/src/push_notification/domain/repos/Interacted_message_repo.dart';
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
  final InteractedMessageRepo _interactedMessageRepo;
  final GetMassageBackground _getMassageBackground;
  late StreamSubscription<RemoteMessage> subscription;

  PushBloc({
    required InteractedMessageRepo interactedMessageRepo,
    required GetMassageBackground getMassageBackground,
  })  : _interactedMessageRepo = interactedMessageRepo,
        _getMassageBackground = getMassageBackground,
        super(const PushState.valueObject()) {
    on<Subscription>(_onSubscraibeMessage);
    on<Receive>(_onReceiveMessage);
    on<ChangeStatus>(_onResetStatus);
    add(const PushEvent.subscription());
    _subscribe();
  }

  Future<void> _onSubscraibeMessage(
      Subscription event, Emitter<PushState> emit) async {
    // await _interactedMessageRepo.setupInteractedMessage();
    // final initialMessage = _interactedMessageRepo.initialMessage;

    await _getMassageBackground.initMessage();
    final initialMessage = _getMassageBackground.initialMessage;

    if (initialMessage != null) {
      print('object22: initialMessage: ${initialMessage}');
      emit(state.copyWith(status: Activity.detail));
    }
  }

  Future<void> _onReceiveMessage(Receive event, Emitter<PushState> emit) async {
    emit(state.copyWith(status: Activity.detail));
    print('object22: state: ${state.status}');
  }

  Future<void> _onResetStatus(
      ChangeStatus event, Emitter<PushState> emit) async {
    if (state.status == Activity.unknown) {
      return;
    }
    emit(state.copyWith(status: Activity.unknown));
    print('object22: _onResetStatus: ${state.status}');
  }

  void _subscribe() {
    // subscription = _interactedMessageRepo.onMessageOpenedApp.listen(
    //   (items) {
    //     add(const PushEvent.changeStatus());
    //     print('object22: posts: ${items.data}');
    //     add(const PushEvent.receive());
    //   },
    //   onError: (error) => print('object22: error'),
    // );

    //subscription = _interactedMessageRepo.onMessageOpened;

    void handleMessage(RemoteMessage message) {
      print('object22: _handleMessage : $message');
      add(const PushEvent.changeStatus());
      print('object22: posts: ${message.data}');
      add(const PushEvent.receive());
    }

    final RemoteMessage? remoteMessage = _getMassageBackground.initialMessage;
    // final RemoteMessage? remoteMessage =
    //     await FirebaseMessaging.instance.getInitialMessage();
    if (remoteMessage != null) {
      handleMessage(remoteMessage);
    }

    subscription =
        _getMassageBackground.onMessageOpenedApp.listen(handleMessage);
    // add(const PushEvent.changeStatus());
    // print('object22: posts: {items.data}');
    // add(const PushEvent.receive());
  }
}
