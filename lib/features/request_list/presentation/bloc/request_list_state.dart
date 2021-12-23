part of 'request_list_bloc.dart';

abstract class RequestListState extends Equatable {
  const RequestListState();  

  @override
  List<Object> get props => [];
}
class RequestListInitial extends RequestListState {}
