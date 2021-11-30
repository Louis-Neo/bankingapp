// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../ui/create_account/create_account_view.dart';
import '../ui/dashboard/dashboard_view.dart';
import '../ui/login/login_view.dart';
import '../ui/register/register_view.dart';
import '../ui/startup/startup_view.dart';
import '../ui/transact/transact_view.dart';

class Routes {
  static const String startUpView = '/';
  static const String dashboardView = '/dashboard-view';
  static const String logInView = '/log-in-view';
  static const String registerView = '/register-view';
  static const String createAccountView = '/create-account-view';
  static const String transactView = '/transact-view';
  static const all = <String>{
    startUpView,
    dashboardView,
    logInView,
    registerView,
    createAccountView,
    transactView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startUpView, page: StartUpView),
    RouteDef(Routes.dashboardView, page: DashboardView),
    RouteDef(Routes.logInView, page: LogInView),
    RouteDef(Routes.registerView, page: RegisterView),
    RouteDef(Routes.createAccountView, page: CreateAccountView),
    RouteDef(Routes.transactView, page: TransactView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    StartUpView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const StartUpView(),
        settings: data,
      );
    },
    DashboardView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const DashboardView(),
        settings: data,
      );
    },
    LogInView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const LogInView(),
        settings: data,
      );
    },
    RegisterView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const RegisterView(),
        settings: data,
      );
    },
    CreateAccountView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const CreateAccountView(),
        settings: data,
      );
    },
    TransactView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const TransactView(),
        settings: data,
      );
    },
  };
}
