import 'package:komatsu_clean/core/platform/network_info.dart';
import 'package:komatsu_clean/features/request_list/data/datasources/request_list_local_datasource.dart';
import 'package:komatsu_clean/features/request_list/data/datasources/request_list_remote_datasource.dart';
import 'package:komatsu_clean/features/request_list/domain/entities/request_data.dart';
import 'package:komatsu_clean/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:komatsu_clean/features/request_list/domain/repositories/request_repository.dart';

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
