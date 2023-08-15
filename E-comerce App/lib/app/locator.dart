import 'package:get_it/get_it.dart';
import 'package:hazrin/app/locator.iconfig.dart';
import 'package:injectable/injectable.dart';

final locator = GetIt.instance;
@injectableInit
Future<void> configure() => $initGetIt(locator);