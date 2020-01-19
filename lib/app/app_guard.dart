
import 'package:flutter_modular/flutter_modular.dart';

class AppGuard  implements RouteGuard {
  @override
  bool canActivate(String url) {
    return false;
  }
}