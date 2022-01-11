// ignore_for_file: unused_local_variable

import 'package:flutter_test/flutter_test.dart';
import 'package:komatsu_clean/core/platform/network_info.dart';
import 'package:komatsu_clean/features/data/datasources/request/request_list_local_datasource.dart';
import 'package:komatsu_clean/features/data/datasources/request/request_list_remote_datasource.dart';
import 'package:komatsu_clean/features/data/models/request/request_list_model.dart';
import 'package:komatsu_clean/features/data/repositories/request/request_list_repository.dart';
import 'package:komatsu_clean/features/domain/entities/request/request_data.dart';
import 'package:mockito/mockito.dart';

class MockRemoteDataSource extends Mock implements RequestListRemoteDataSource {
}

class MockLocalDataSource extends Mock implements RequestListLocalDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  RequestListRepositoryImpl? repository;
  MockRemoteDataSource? mockRemoteDataSource;
  MockLocalDataSource? mockLocalDataSource;
  MockNetworkInfo? mockNetworkInfo;

  setUp(() {
    mockRemoteDataSource = MockRemoteDataSource();
    mockLocalDataSource = MockLocalDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repository = RequestListRepositoryImpl(
      remoteDataSource: mockRemoteDataSource!,
      localDataSource: mockLocalDataSource!,
      networkInfo: mockNetworkInfo!,
    );
  });

  group('GetRequestList', () {
    const tRequestListModel = RequestListModel(
      info: 'Esta es la info de la solicitud',
      title: 'Titulo de la solicitud',
      type: 0,
      id: 1,
    );
    const RequestData tRequestData = tRequestListModel;
    test('Revisa si el dispositivo tiene internet', () async {
      when(mockNetworkInfo!.hasInternet).thenAnswer((_) async => true);

      repository!.getRequestList();

      verify(mockNetworkInfo!.hasInternet);
    });

    group('Dispositivo con internet', () {
      setUp(() {
        when(mockNetworkInfo!.hasInternet).thenAnswer((_) async => true);
      });
    });

    group('Dispositivo sin internet', () {
      setUp(() {
        when(mockNetworkInfo!.hasInternet).thenAnswer((_) async => false);
      });
    });
  });
}
