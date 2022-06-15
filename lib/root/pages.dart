import 'package:get/get.dart';
import 'package:teampool/pages/root.dart';
import 'package:teampool/pages/sign_in.dart';
import 'package:teampool/root/route_name.dart';

class Pages {
  static final routes = [
    GetPage(
      name: RouteName.ROOT,
      page: () => Root(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: RouteName.SIGNIN,
      page: () => SignIn(),
      transition: Transition.noTransition,
    ),
  ];
}