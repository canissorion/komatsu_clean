part of 'request_list_bloc.dart';


abstract class RequestListEvent extends Equatable {
  const RequestListEvent();

  @override
  List<Object> get props => [];
}

class GetRequestList extends RequestListEvent {
  const GetRequestList();
}
