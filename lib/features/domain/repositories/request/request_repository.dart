import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../entities/request/request_data.dart';

abstract class RequestRepository {
  Future<Either<Failure, RequestData>>? getRequestList();
}
