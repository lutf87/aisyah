import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aisyah/pages/jadwal/jadwal_controller.dart';

class JadwalPage extends GetView<JadwalController> {
  const JadwalPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (BuildContext context, innerBoxIsScrolled) {
              return <Widget>[
                const SliverAppBar(
                  title: Text("Jadwal"),
                  pinned: true,
                  floating: true,
                  bottom: TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    isScrollable: true,
                    tabs: [
                      Tab(child: Text("Mapel")),
                      Tab(child: Text("Ekskul")),
                    ],
                  ),
                )
              ];
            },
            body: TabBarView(
              children: <Widget>[
                //mapel
                Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Hari",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 70.0,
                      width: double.infinity,
                      child: Card(
                        color: const Color.fromARGB(255, 205, 191, 253),
                        child: Container(
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text("Nama Mata Pelajaran"),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Container(
                                          margin:
                                              const EdgeInsets.only(right: 5.0),
                                          child: const Text(
                                            "kode mapel",
                                            style:
                                                TextStyle(color: Colors.orange),
                                          )),
                                      Container(
                                          margin:
                                              const EdgeInsets.only(left: 5.0),
                                          child: const Text(
                                            "Nama Kelas",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ))
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  Text("Pukul-Pukul"),
                                  Text("Pengajar")
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                //ekskul
                Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Hari",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 70.0,
                      width: double.infinity,
                      child: Card(
                        color: const Color.fromARGB(255, 205, 191, 253),
                        child: Container(
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text("Nama Ekskul"),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Container(
                                          margin:
                                              const EdgeInsets.only(right: 5.0),
                                          child: const Text(
                                            "kode ekskul",
                                            style:
                                                TextStyle(color: Colors.orange),
                                          )),
                                      Container(
                                          margin:
                                              const EdgeInsets.only(left: 5.0),
                                          child: const Text(
                                            "Tempat",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ))
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  Text("Pukul-Pukul"),
                                  Text("Pembimbing")
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
