// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entities/request/request_data.dart';

part 'request_list_event.dart';
part 'request_list_state.dart';

class RequestListBloc extends Bloc<RequestListEvent, RequestListState> {
  RequestListBloc() : super(Empty()) {
    on<RequestListEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
