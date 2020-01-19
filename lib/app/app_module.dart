import 'package:flutter_app_modular/app/app_controller.dart';
import 'package:flutter_app_modular/app/app_guard.dart';
import 'package:flutter_app_modular/app/modules/login/login_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_modular/app/app_widget.dart';
import 'package:flutter_app_modular/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/home', module: HomeModule(), guards: [AppGuard()]),
        Router('/login', module: LoginModule(), guards: [AppGuard()]),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
