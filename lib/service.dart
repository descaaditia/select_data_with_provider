import 'dart:convert';

import 'package:flutter/services.dart';

import 'model.dart';

class ServiceClass {
  Future<AllDataModel> getService() async {
    String json = await rootBundle.loadString("assets/data.json");
    print(json);
    final datajson = await jsonDecode(json);
    AllDataModel allDataModel = AllDataModel.fromJson(datajson);
    return allDataModel;

    //     String apiURL = "http://192.168.0.12//api-test-mob/getSelect.php";

    // var apiResult = await http.get(apiURL);

    // final datajson = jsonDecode(apiResult.body);
    // AllDataModel allDataModel = AllDataModel.fromJson(datajson);
    // return allDataModel;
  }
}
