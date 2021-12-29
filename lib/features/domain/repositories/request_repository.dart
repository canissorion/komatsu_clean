import 'package:dartz/dartz.dart';
import 'package:komatsu_clean/core/error/failures.dart';
import 'package:komatsu_clean/features/domain/entities/request_data.dart';

abstract class RequestRepository {
  Future<Either<Failure, RequestData>>? getRequestList();
}
