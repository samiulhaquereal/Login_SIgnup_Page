import 'package:get/get.dart';
import 'package:login_signup/src/features/core/screens/dashboard_screen/dashboard_screen.dart';
import 'package:login_signup/src/repository/authentication_repository/authentication_repository.dart';

class OTPController extends GetxController{
  static OTPController get instance => Get.find();


  void verifyOTP(String otp) async{
    var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
    isVerified ? Get.offAll(DashboardScreen()) : Get.back();
  }

}