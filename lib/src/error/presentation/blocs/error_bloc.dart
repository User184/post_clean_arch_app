import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:placeholder_test/src/error/network_error.dart';

part 'error_bloc.freezed.dart';

enum PersistType {
  lostConnection,
  connected,
}

@freezed
class ErrorsEvent with _$ErrorsEvent {
  const ErrorsEvent._();

  const factory ErrorsEvent.error({required NetworkErrors error}) = _Error;

  const factory ErrorsEvent.closeModal() = _CloseModal;
}

@freezed
class ErrorsState with _$ErrorsState {
  const ErrorsState._();

  const factory ErrorsState.objectValue({
    @Default(PersistType.connected) PersistType persist,
    String? modal,
  }) = _State;
}

class ErrorsBloc extends Bloc<ErrorsEvent, ErrorsState> {
  ErrorsBloc() : super(const ErrorsState.objectValue()) {
    on<_Error>(_error);
    on<_CloseModal>(_closeModal);
  }

  void _error(
    _Error event,
    Emitter<ErrorsState> emit,
  ) {
    Timer(
      const Duration(seconds: 2),
      () => add(const ErrorsEvent.closeModal()),
    );
    event.error.whenOrNull(
      /// Этот тип ошибок будет обрабатываться в индивидуальном порядке, поэтом тут отключен
      //badRequest: (msg) => emit(state.copyWith(
      //  modal: 'Something went wrong...',
      //  //getHumanityText(event.error.msg ?? '400 Bad request'),
      //)),
      unauthorized: (msg) => emit(
        state.copyWith(
          modal: 'User with the same username or password is not authorized',
          //getHumanityText(event.error.msg ?? '401 User unauthorized'),
        ),
      ),
      forbidden: (msg) => emit(
        state.copyWith(
          modal: 'Access is forbidden',
          //getHumanityText(event.error.msg ?? '403 Access is forbidden'),
        ),
      ),
      notFound: (msg) => emit(
        state.copyWith(
          modal: 'Something went wrong...',
          //getHumanityText(event.error.msg ?? '404 Not Found'),
        ),
      ),
      tooLarge: (msg) => emit(
        state.copyWith(
          modal: 'Payload Too Large',
          //getHumanityText(event.error.msg ?? '413 Payload Too Large '),
        ),
      ),
      serverError: (msg) => emit(
        state.copyWith(
          modal: 'ERROR: 500 Internal Server Error',
          //'Something went wrong...'
          //getHumanityText(event.error.msg ?? '500 Internal Server Error'),
        ),
      ),
      badGateway: (msg) => emit(
        state.copyWith(
          modal: 'Something went wrong...',
          //getHumanityText(event.error.msg ?? '502 Bad gateway'),
        ),
      ),
      unavailable: (msg) => emit(
        state.copyWith(
          modal: 'Something went wrong...',
          //getHumanityText(event.error.msg ?? '503 Service Unavailable'),
        ),
      ),
      timeOut: (msg) => emit(
        state.copyWith(
          modal: 'Gateway Timeout',
          //getHumanityText(event.error.msg ?? '504 Gateway Timeout'),
        ),
      ),
      unExpected: (msg) => emit(
        state.copyWith(
          modal: 'Something went wrong...',
          //getHumanityText(event.error.msg ?? 'Unexpected error'),
        ),
      ),
      custom: (msg) => emit(
        state.copyWith(
          modal: msg,
        ),
      ),
    );
  }

  void _closeModal(
    _CloseModal event,
    Emitter<ErrorsState> emit,
  ) {
    emit(state.copyWith(modal: null));
  }
}
