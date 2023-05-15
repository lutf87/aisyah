import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aisyah/pages/home/home_controller.dart';
import 'package:aisyah/routes/app_routes.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: double.infinity,
              height: 230.0,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                color: const Color.fromARGB(225, 78, 156, 252),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/sinau.png'),
                        fit: BoxFit.contain,
                        alignment: Alignment(0, 1)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                          top: 15.0,
                          left: 20.0,
                        ),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Hi, Faisol Lutfi Ibadu Rohman",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 150.0,
                  width: double.infinity,
                  child: Card(
                    color: const Color.fromARGB(255, 249, 206, 104),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/jadwal.png'),
                              fit: BoxFit.contain,
                              alignment: Alignment(1, 0))),
                      child: InkWell(
                          splashColor: Colors.amber,
                          onTap: () {
                            Get.toNamed(AppRoutes.jadwal);
                          },
                          child: Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(left: 20.0),
                            child: const Text(
                              "Jadwal",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: Color.fromARGB(255, 46, 72, 135)),
                            ),
                          )),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 150.0,
                  width: double.infinity,
                  child: Card(
                    color: const Color.fromARGB(255, 255, 203, 130),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/izin.png'),
                              fit: BoxFit.contain,
                              alignment: Alignment(1, 0))),
                      child: InkWell(
                          splashColor: Colors.amber,
                          onTap: () {
                            Get.toNamed(AppRoutes.perizinan);
                          },
                          child: Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(left: 20.0),
                            child: const Text(
                              "Perizinan",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: Color.fromARGB(255, 46, 72, 135)),
                            ),
                          )),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 150.0,
                  width: double.infinity,
                  child: Card(
                    color: const Color.fromARGB(255, 224, 176, 172),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/nilai.png'),
                              fit: BoxFit.contain,
                              alignment: Alignment(1, 0))),
                      child: InkWell(
                          splashColor: Colors.amber,
                          onTap: () {
                            Get.toNamed(AppRoutes.perizinan);
                          },
                          child: Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(left: 20.0),
                            child: const Text(
                              "Nilai",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: Color.fromARGB(255, 46, 72, 135)),
                            ),
                          )),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
