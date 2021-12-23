import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'request_list_event.dart';
part 'request_list_state.dart';

class RequestListBloc extends Bloc<RequestListEvent, RequestListState> {
  RequestListBloc() : super(RequestListInitial()) {
    on<RequestListEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
