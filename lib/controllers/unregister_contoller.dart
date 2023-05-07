import 'package:country_code_picker/country_code_picker.dart';
import 'package:get/get.dart';

class UnregisterController extends GetxController {
  var sentOtp = false.obs;
  var smsCode = ''.obs;
  var phoneNumber = ''.obs;
  var otpCode = ''.obs;
  var countryCode = '+995'.obs;

  void otpSent(verificationId) {
    sentOtp.value = !sentOtp.value;
    smsCode.value = verificationId;
  }

  setPhoneNumber(String number) => phoneNumber.value = number;
  setOtpCode(String code) => otpCode.value = code;
  setCountryCode(CountryCode code) => countryCode.value = code.toString();
}
