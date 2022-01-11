import '../../../domain/entities/request/request_data.dart';

class RequestListModel extends RequestData {
  const RequestListModel({
    required String info,
    required String title,
    required int type,
    required int id,
  }) : super(info: info, title: title, type: type, id: id);
  factory RequestListModel.fromJson(Map<String, dynamic> json) {
    return RequestListModel(
      info: json['info'].toString(),
      title: json['title'].toString(),
      type: int.parse(json['type'].toString()),
      id: int.parse(json['id'].toString()),
    );
  }
}
