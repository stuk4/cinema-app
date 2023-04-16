import 'package:flutter/material.dart';
import 'package:cinemapedia/config/constants/enviornment.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home screen'),
      ),
      body: Center(
        child: Text(Enviornment.theMoiveDbKey),
      ),
    );
  }
}
