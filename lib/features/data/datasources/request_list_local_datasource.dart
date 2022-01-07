import '../models/request_list_model.dart';

abstract class RequestListLocalDataSource {
  /// Obtiene la data en cache del [RequestListModel] que guardo la ultima vez
  /// que se obtuvo info desde la api
  ///
  /// Devuelve [NoLocalDataException] en caso de no tener data guardada.
  Future<RequestListModel>? getLastRequestList();

  // TODO: Implementar llamada a la db interna
  ///
  /// Devuelve un [LocalDataException] para los errores
  Future<void>? cacheRequestList(RequestListModel listToCache);
}

class RequestListLocalDataSoruceImpl implements RequestListLocalDataSource {
  @override
  Future<void>? cacheRequestList(RequestListModel listToCache) {
    //TODO: implement cacheData
    return null;
  }

  @override
  Future<RequestListModel>? getLastRequestList() {
    // TODO: implement getLastRequestList
    return null;
  }
}
