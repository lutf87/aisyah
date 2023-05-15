import 'package:get/get.dart';
import 'package:aisyah/pages/announce/announce_controller.dart';
import 'package:aisyah/pages/jadwal/jadwal_controller.dart';
import 'package:aisyah/pages/nilai/nilai_controller.dart';
import 'package:aisyah/pages/perizinan/perizinan_controller.dart';
import 'package:aisyah/pages/profile/profiles_controller.dart';
import 'package:aisyah/pages/dashboard/dashboard_controller.dart';
import 'package:aisyah/pages/home/home_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<AnnounceController>(() => AnnounceController());
    Get.lazyPut<ProfileController>(() => ProfileController());

    //unnav
    Get.lazyPut<JadwalController>(() => JadwalController());
    Get.lazyPut<PerizinanController>(() => PerizinanController());
    Get.lazyPut<NilaiController>(() => NilaiController());
  }
}
