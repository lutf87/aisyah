import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aisyah/pages/perizinan/perizinan_controller.dart';

class PerizinanPage extends GetView<PerizinanController> {
  const PerizinanPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perizinan"),
      ),
      body: const Center(
        child: Text("Perizinan"),
      ),
    );
  }
}
