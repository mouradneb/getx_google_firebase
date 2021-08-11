import 'package:get/get.dart';
import 'package:getx_google_firebase/app/modules/home/controllers/home_controller.dart';

class WelcomeController extends GetxController {
  HomeController homeController = Get.find<HomeController>();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void logout() {
    homeController.googleSignIn.signOut();
    homeController.firebaseAuth.signOut();
  }
}
