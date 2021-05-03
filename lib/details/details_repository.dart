import 'dart:convert';

import 'package:be_hero/shared/models/cases_model.dart';
import 'package:http/http.dart' as http;

class HomeRepository {
  Future<CaseModel> getCase(String id) async {
    var url = Uri.http("10.0.2.2:3000", "/cases/$id");

    final response = await http.get(url);
    final json = jsonDecode(response.body);
    final caseOne = CaseModel.fromJson(json);

    return caseOne;
  }
}
