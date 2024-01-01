import 'package:flutter/cupertino.dart';
import 'package:select_data_with_provider/model.dart';
import 'package:select_data_with_provider/service.dart';

class DataProvider extends ChangeNotifier {
  ServiceClass _service = ServiceClass();
  AllDataModel _allDataModel;

  AllDataModel get allDataModel => _allDataModel;

  Future<void> getDataProvider() async {
    final dataservice = await _service.getService();
    _allDataModel = dataservice;
    notifyListeners();
  }
}
