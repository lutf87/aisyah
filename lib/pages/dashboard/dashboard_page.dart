import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import 'package:aisyah/pages/profile/profiles_page.dart';
import 'package:aisyah/pages/home/home_page.dart';
import 'package:aisyah/pages/announce/announce_page.dart';

import 'dashboard_controller.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: const [
                HomePage(),
                AnnouncePage(),
                ProfilePage(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black,
            selectedItemColor: const Color.fromARGB(255, 78, 156, 252),
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            elevation: 0,
            items: [
              _bottomNavigationBarItem(
                icon: IconlyBold.home,
                label: "Beranda",
              ),
              _bottomNavigationBarItem(
                icon: IconlyBold.document,
                label: "Pengumuman",
              ),
              _bottomNavigationBarItem(
                icon: IconlyBold.profile,
                label: "Profil",
              )
            ],
          ),
        );
      },
    );
  }
}

_bottomNavigationBarItem({IconData icon, String label}) {
  return BottomNavigationBarItem(
    icon: Icon(icon),
    label: label,
  );
}
