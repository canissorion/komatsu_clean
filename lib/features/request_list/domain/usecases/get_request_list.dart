import 'package:dartz/dartz.dart';
import 'package:komatsu_clean/core/error/failures.dart';
import 'package:komatsu_clean/features/request_list/domain/entities/request_data.dart';
import 'package:komatsu_clean/features/request_list/domain/repositories/request_repository.dart';

class GetRequestList {
  final RequestRepository repository;

  GetRequestList(this.repository);

  Future<Either<Failure, RequestData>?> execute() async {
    return await repository.getRequestList();
  }
}
