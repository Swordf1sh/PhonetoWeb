import 'package:get/get.dart';

class NavigationController extends GetxController {
  var themeModeStatus = false.obs;
  var activePage = 0.obs;

  setThemeModeStatus(bool val) => themeModeStatus.value = val;
  setActivePage(int pageNum) => activePage.value = pageNum;
}
