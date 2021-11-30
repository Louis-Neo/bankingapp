import 'package:mbanker/app/app.locator.dart';
import 'package:mbanker/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartUpViewModel extends BaseViewModel {

  final _navigationService = locator<NavigationService>();

  Future<void> runStartUpLogic() async {
    _navigationService.navigateTo(Routes.dashboardView);
  }


}