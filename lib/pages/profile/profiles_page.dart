import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aisyah/pages/profile/profiles_controller.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({Key key}) : super(key: key);
  final double coverHeight = 280;
  final double profileHeight = 140;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          buildTop(),
          buildContent(),
        ],
      ),
    );
  }

  Widget buildTop() {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverImage(),
        ),
        Positioned(
          top: top,
          child: buildProfileImage(),
        )
      ],
    );
  }

  Widget buildContent() => Column(
        children: const <Widget>[
          SizedBox(height: 8),
          Text(
            'Hunter x Hunter',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'NAMA : Andi Budi Cahyono',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          Text("JENIS KELAMIN : Laki - Laki"),
          Text("NISN : 10111230"),
          Text("ALAMAT : Jl. Menuju Surga"),
        ],
      );

  Widget buildCoverImage() => Container(
        color: Colors.black,
        child: Image.asset(
          'assets/images/user.jpg',
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey,
        backgroundImage: const AssetImage('assets/images/eg.jpg'),
      );
}
