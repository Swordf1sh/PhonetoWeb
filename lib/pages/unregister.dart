import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:phoneto_web/repositories/otp.dart';
import '../ui/components/navigation_bar.dart';
import '../controllers/unregister_contoller.dart';

class UnregisterPage extends StatefulWidget {
  const UnregisterPage({super.key});

  @override
  State<UnregisterPage> createState() => _UnregisterPageState();
}

class _UnregisterPageState extends State<UnregisterPage> {
  // initialize controller
  UnregisterController controller = Get.put(UnregisterController());
  // initialize verify phone number instance
  UnregisterPhoneNumber otpProvider = UnregisterPhoneNumber();
  // input forms controllers
  TextEditingController phoneNumberInputController = TextEditingController();
  TextEditingController otpInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const NavigationBarWidget(),
        body: Center(
          child: Column(children: [
            Row(
              children: [
                Expanded(flex: 2, child: Container()),
                Obx(
                  () => Expanded(
                      flex: 3,
                      child: Form(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'unregister_headline'.tr,
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Text(
                            'unregister_info_message'.tr,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Visibility(
                            visible: controller.sentOtp.value,
                            child: Text(
                              'otp_submit_description'.tr,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                          Visibility(
                            visible: !controller.sentOtp.value,
                            child: Row(
                              children: [
                                CountryCodePicker(
                                  onChanged: controller.setCountryCode,
                                  // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                                  initialSelection: 'GE',
                                  favorite: const ['+995', 'GE'],
                                  dialogTextStyle:
                                      TextStyle(color: Colors.black),
                                  // optional. Shows only country name and flag
                                  showCountryOnly: false,
                                  // optional. Shows only country name and flag when popup is closed.
                                  showOnlyCountryWhenClosed: false,
                                  // optional. aligns the flag and the Text left
                                  alignLeft: false,
                                ),
                                Flexible(
                                  child: TextFormField(
                                    controller: phoneNumberInputController,
                                    decoration: InputDecoration(
                                        label: Text('phone_number'.tr),
                                        filled: true),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Visibility(
                            visible: controller.sentOtp.value,
                            child: TextFormField(
                              controller: otpInputController,
                              decoration: InputDecoration(
                                  label: Text('otp_message'.tr),
                                  icon: const Icon(Icons.message),
                                  filled: true),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Visibility(
                            visible: !controller.sentOtp.value,
                            child: ElevatedButton.icon(
                                onPressed: () {
                                  controller.setPhoneNumber(
                                      phoneNumberInputController.text);
                                  otpProvider.verifyUserPhoneNumber();
                                },
                                icon: const Icon(Icons.send_to_mobile),
                                label: Text('send_otp'.tr)),
                          ),
                          Visibility(
                            visible: controller.sentOtp.value,
                            child: ElevatedButton.icon(
                                onPressed: () {
                                  controller
                                      .setOtpCode(otpInputController.text);
                                  otpProvider.verifyOtpCode();
                                },
                                icon: const Icon(Icons.check),
                                label: Text('submit_otp'.tr)),
                          )
                        ],
                      ))),
                ),
                Expanded(flex: 2, child: Container()),
              ],
            )
          ]),
        ));
  }
}
