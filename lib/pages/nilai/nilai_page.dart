import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aisyah/pages/nilai/nilai_controller.dart';

class NilaiPage extends GetView<NilaiController> {
  const NilaiPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nilai"),
      ),
      body: const Center(
        child: Text("Nilai"),
      ),
    );
  }
}
