
import 'package:fl/ui/home_screen/home_screen.dart';
import 'package:get/get.dart';

class Routes {

  static const String HOME = "/home";

  static List<GetPage> getPages = [
    GetPage(
      name: HOME,
      page: () => HomeScreen(),
    ),
  ];

}