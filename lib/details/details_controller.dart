import 'package:be_hero/shared/models/cases_model.dart';
import 'package:flutter/cupertino.dart';

import 'details_repository.dart';
import 'details_state.dart';

class DetailsController {
  CaseModel caseOne;

  final repository = HomeRepository();
  final state = ValueNotifier<DetailsState>(DetailsState.empty);

  Future getCase(String id) async {
    state.value = DetailsState.loading;

    try {
      caseOne = await repository.getCase(id);

      state.value = DetailsState.success;
    } catch (err) {
      state.value = DetailsState.error;
    }
  }
}
