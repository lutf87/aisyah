import 'package:get/get.dart';
import 'package:aisyah/pages/dashboard/dashboard_binding.dart';
import 'package:aisyah/pages/dashboard/dashboard_page.dart';
import 'package:aisyah/pages/jadwal/jadwal_page.dart';
import 'package:aisyah/pages/nilai/nilai_page.dart';
import 'package:aisyah/pages/perizinan/perizinan_page.dart';

import 'app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.dashboard,
      page: () => const DashboardPage(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: AppRoutes.jadwal,
      page: () => const JadwalPage(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: AppRoutes.perizinan,
      page: () => const PerizinanPage(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: AppRoutes.nilai,
      page: () => const NilaiPage(),
      binding: DashboardBinding(),
    ),
  ];
}
