import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:komatsu_clean/core/usecases/usecase.dart';
import 'package:komatsu_clean/features/domain/entities/request/request_data.dart';
import 'package:komatsu_clean/features/domain/repositories/request/request_repository.dart';
import 'package:komatsu_clean/features/domain/usecases/request/get_request_list.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

class MockRequestListRepository extends Mock implements RequestRepository {}

@GenerateMocks([MockRequestListRepository])
void main() {
  late GetRequestList usecase;
  late MockRequestListRepository mockRequestListRepository;

  setUp(() {
    mockRequestListRepository = MockRequestListRepository();
    usecase = GetRequestList(mockRequestListRepository);
  });

  const tRequestList = RequestData(
    info: 'Esta es la info de la solicitud',
    title: 'Titulo de la solicitud',
    type: 0,
    id: 1,
  );
  test('Obtiene la solicitud desde el repositorio', () async {
    when(mockRequestListRepository.getRequestList())
        .thenAnswer((_) async => const Right(tRequestList));

    final result = await usecase(NoParams());

    expect(result, const Right(tRequestList));

    verify(mockRequestListRepository.getRequestList());
    verifyNoMoreInteractions(mockRequestListRepository);
  });
}
