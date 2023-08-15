import 'package:get_it/get_it.dart';
import 'package:hazrin/viewmodels/main_viewmodel.dart';
import 'package:hazrin/viewmodels/navigation_viewmodel.dart';
import 'package:hazrin/viewmodels/vendor_auth_viewmodel.dart';

Future<void> $initGetIt(GetIt g, {String? environment}) async{
  g.registerLazySingleton<MainViewModel>(() => MainViewModel());
  g.registerLazySingleton<VendorAuthViewModel>(() => VendorAuthViewModel());
}