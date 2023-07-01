import 'package:get/get.dart';
import 'package:pendaftaran/src/pages/Dashboard.dart';
import 'package:pendaftaran/src/pages/LoginPage.dart';
import 'package:pendaftaran/src/routes/constant.dart';

final List<GetPage<dynamic>>? routes = [
  GetPage(name: loginRoute, page: () => LoginPage()),
  GetPage(name: dashboardRoute, page: () => Dashboard()),
];
