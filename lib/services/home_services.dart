import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:machine_test_brainwired/utils/utils.dart';

class HomeServices {
  Future<Response> fetchDetails() async {
    try {
      Response response = await Dio().get(Apis.detilsApi);
      log(response.data.toString());
      return response;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
