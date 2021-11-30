
import 'package:mbanker/ui/create_account/create_account_view.dart';
import 'package:mbanker/ui/dashboard/dashboard_view.dart';
import 'package:mbanker/ui/login/login_view.dart';
import 'package:mbanker/ui/register/register_view.dart';
import 'package:mbanker/ui/startup/startup_view.dart';
import 'package:mbanker/ui/transact/transact_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    CupertinoRoute(page: StartUpView, initial: true),
    CupertinoRoute(page: DashboardView),
    CupertinoRoute(page: LogInView),
    CupertinoRoute(page: RegisterView),
    CupertinoRoute(page: CreateAccountView),
    CupertinoRoute(page: TransactView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService)
  ]
)
class AppSetup {
  /**/
}