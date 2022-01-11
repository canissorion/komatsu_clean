// ignore_for_file: prefer_const_constructors_in_immutables

part of 'request_list_bloc.dart';

abstract class RequestListState extends Equatable {
  const RequestListState();

  @override
  List<Object> get props => [];
}

class Empty extends RequestListState {}

class Loading extends RequestListState {}

class Loaded extends RequestListState {
  late final RequestData requestList;

  Loaded({required this.requestList});

  @override
  List<Object> get props => [requestList];
}

class Error extends RequestListState {
  late final String message;

  Error({required this.message});

  @override
  List<Object> get props => [message];
}
