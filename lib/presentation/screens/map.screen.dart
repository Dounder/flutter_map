import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  static const name = 'map_screen';

  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('MapScreen')),
    body: const Center(child: Text('MapScreen')),
  );
}
