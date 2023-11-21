import 'package:ahmed_s_application2/core/app_export.dart';
import 'package:ahmed_s_application2/presentation/app_navigation_screen/models/app_navigation_model.dart';

/// A controller class for the AppNavigationScreen.
///
/// This class manages the state of the AppNavigationScreen, including the
/// current appNavigationModelObj
class AppNavigationController extends GetxController {
  Rx<AppNavigationModel> appNavigationModelObj = AppNavigationModel().obs;
}
