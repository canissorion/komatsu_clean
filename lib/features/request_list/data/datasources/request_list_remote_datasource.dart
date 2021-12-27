import 'package:komatsu_clean/features/request_list/data/models/request_list_model.dart';

abstract class RequestListRemoteDataSource {
  /// TODO: Implementar llamada a la api
  /// 
  /// Devuelve un [ServerException] para los errores
  Future<RequestListModel> getRequestList();
}
