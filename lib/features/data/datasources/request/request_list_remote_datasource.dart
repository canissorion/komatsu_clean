import '../../models/request/request_list_model.dart';

abstract class RequestListRemoteDataSource {
  /// TODO: Implementar llamada a la api
  ///
  /// Devuelve un [ServerException] para los errores
  Future<RequestListModel> getRequestList();
}
