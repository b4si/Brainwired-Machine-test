import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:machine_test_brainwired/model/details_model.dart';
import 'package:machine_test_brainwired/services/home_services.dart';

class HomeContoller with ChangeNotifier {
  List<DetailsModel> detailsModel = [];

  getDetails() async {
    Response response = await HomeServices().fetchDetails();
    detailsModel.clear();
    detailsModel.addAll(parseUsers(response));
    notifyListeners();
  }

  List<DetailsModel> parseUsers(Response responseBody) {
    final parsed = responseBody.data.cast<Map<String, dynamic>>();
    return parsed
        .map<DetailsModel>((json) => DetailsModel.fromJson(json))
        .toList();
  }
}
