import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:komatsu_clean/features/request_list/data/models/request_list_model.dart';
import 'package:komatsu_clean/features/request_list/domain/entities/request_data.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const tRequestListModel = RequestListModel(
      info: 'Esta es la info de la solicitud',
      title: 'Titulo de la solicitud',
      type: 0,
      id: 1);

  test('Subclase de una entidad de Request Data', () async {
    expect(tRequestListModel, isA<RequestData>());
  });

  group('data del Json', () {
    test('Obtiene los request', () async {
      final Map<String, dynamic> jsonMap = jsonDecode(fixture('request.json'));

      final result = RequestListModel.fromJson(jsonMap);

      expect(result, tRequestListModel);
    });
  });
}