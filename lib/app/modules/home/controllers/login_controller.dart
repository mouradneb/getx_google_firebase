import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:getx_google_firebase/app/modules/home/controllers/home_controller.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController {
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

  void login() async {
    GoogleSignInAccount? googleSignInAccount =
        await homeController.googleSignIn.signIn();

    if (googleSignInAccount == null) {
      Get.back();
    } else {
      GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;
      OAuthCredential oAuthCredential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken);
      homeController.firebaseAuth.signInWithCredential(oAuthCredential);
    }
  }
}
