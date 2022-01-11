import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/platform/network_info.dart';
import '../../../domain/entities/request/request_data.dart';
import '../../../domain/repositories/request/request_repository.dart';
import '../../datasources/request/request_list_local_datasource.dart';
import '../../datasources/request/request_list_remote_datasource.dart';

class RequestListRepositoryImpl implements RequestRepository {
  final RequestListRemoteDataSource remoteDataSource;
  final RequestListLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  RequestListRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, RequestData>>? getRequestList() {
    networkInfo.hasInternet;
    return null;
  }
}
