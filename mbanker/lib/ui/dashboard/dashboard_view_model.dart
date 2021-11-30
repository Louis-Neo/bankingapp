
import 'package:mbanker/app/app.locator.dart';
import 'package:mbanker/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class DashboardViewModel extends BaseViewModel {

  final _navigationService = locator<NavigationService>();

  Future<void> navigateTo() async {
    _navigationService.navigateTo(Routes.logInView);
  }

  Future<void> navigateToRegistration() async {
    _navigationService.navigateTo(Routes.registerView);
  }

}