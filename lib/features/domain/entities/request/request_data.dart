import 'package:equatable/equatable.dart';

class RequestData extends Equatable {
  final String info;
  final String title;
  final int type;
  final int id;

  const RequestData({
    required this.info,
    required this.title,
    required this.type,
    required this.id,
  });

  @override
  List<Object?> get props => [info, title, type, id];
}
