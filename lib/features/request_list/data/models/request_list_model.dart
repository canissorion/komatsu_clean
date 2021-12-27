import 'package:komatsu_clean/features/request_list/domain/entities/request_data.dart';

class RequestListModel extends RequestData {
  const RequestListModel(
      {required String info,
      required String title,
      required int type,
      required int id})
      : super(info: info, title: title, type: type, id: id);
  factory RequestListModel.fromJson(Map<String, dynamic> json) {
    return RequestListModel(
        info: json['info'],
        title: json['title'],
        type: json['type'],
        id: json['id']);
  }
}
