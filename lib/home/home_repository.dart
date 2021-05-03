import 'dart:convert';

import 'package:be_hero/shared/models/cases_model.dart';
import 'package:http/http.dart' as http;

class HomeRepository {
  Future<List<CaseModel>> getCases() async {
    var url = Uri.http("10.0.2.2:3000", "/cases");

    final response = await http.get(url);
    final list = jsonDecode(response.body) as List;
    final cases = list.map((e) => CaseModel.fromJson(e)).toList();

    return cases;
  }
}
