import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:phoneto_web/controllers/unregister_contoller.dart';

class UnregisterPhoneNumber {
  FirebaseAuth auth = FirebaseAuth.instance;
  UnregisterController controller = Get.put(UnregisterController());

  void verifyUserPhoneNumber() {
    // build phone number from country code and phone number
    String phoneNumber =
        controller.countryCode.value + controller.phoneNumber.value;
    // verify phone number
    auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) {
        // TODO: verification completed
        print('verification completed');
      },
      verificationFailed: (FirebaseAuthException e) {
        print(e.message);
      },
      codeSent: (String verificationId, int? resendToken) {
        print('otp sent');
        controller.otpSent(verificationId);
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  Future<void> verifyOtpCode() async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: controller.smsCode.value,
        smsCode: controller.otpCode.value);
    try {
      await auth
          .signInWithCredential(credential)
          .then((value) => print('User Login In Successful'));
    } catch (error) {
      print('wrong otp');
    }
  }
}
