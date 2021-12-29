import 'package:dartz/dartz.dart';
import 'package:komatsu_clean/core/error/failures.dart';
import 'package:komatsu_clean/core/usecases/usecase.dart';
import 'package:komatsu_clean/features/domain/entities/request_data.dart';
import 'package:komatsu_clean/features/domain/repositories/request_repository.dart';

class GetRequestList implements UseCase<RequestData, NoParams> {
  final RequestRepository repository;

  GetRequestList(this.repository);

  @override
  Future<Either<Failure, RequestData>?> call(NoParams params) async {
    return await repository.getRequestList();
  }
}
