import 'package:be_hero/shared/models/cases_model.dart';
import 'package:flutter/cupertino.dart';

import 'home_repository.dart';
import 'home_state.dart';

class HomeController {
  List<CaseModel> cases;

  final repository = HomeRepository();
  final state = ValueNotifier<HomeState>(HomeState.empty);

  Future getCases() async {
    state.value = HomeState.loading;

    try {
      cases = await repository.getCases();

      state.value = HomeState.success;
    } catch (err) {
      state.value = HomeState.error;
    }
  }
}
