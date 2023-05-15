import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aisyah/pages/announce/announce_controller.dart';

class AnnouncePage extends GetView<AnnounceController> {
  const AnnouncePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pengumuman"),
      ),
      body: const Center(
        child: Text(
          "News Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
