import 'package:dartz/dartz.dart';
import '../../../core/error/failures.dart';
import '../../../core/usecases/usecase.dart';
import '../entities/request_data.dart';
import '../repositories/request_repository.dart';

class GetRequestList implements UseCase<RequestData, NoParams> {
  final RequestRepository repository;

  GetRequestList(this.repository);

  @override
  Future<Either<Failure, RequestData>?> call(NoParams params) async {
    return await repository.getRequestList();
  }
}
