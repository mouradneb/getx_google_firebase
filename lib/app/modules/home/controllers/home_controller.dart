import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:getx_google_firebase/app/routes/app_pages.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomeController extends GetxController {
  var isSignin = false.obs;
  late GoogleSignIn googleSignIn;
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    googleSignIn = GoogleSignIn();
    ever(isSignin, handleAuthStatusChanged);
    isSignin.value = firebaseAuth.currentUser != null;
    firebaseAuth.authStateChanges().listen((event) {
      isSignin.value = event != null;
    });
    super.onReady();
  }

  @override
  void onClose() {}

  handleAuthStatusChanged(bool isLoggedin) {
    if (isLoggedin) {
      Get.offNamed(Routes.WELCOME, arguments: firebaseAuth.currentUser);
    } else {
      Get.offNamed(Routes.LOGIN);
    }
  }
}
