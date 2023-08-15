import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';

import '../main.dart';

class RegisterViewModel extends BaseViewModel{

  var navigationService = navigationViewModel;

  late SharedPreferences prefs;

  var dio = Dio();

}