import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:map_test/data/data.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('HomeScreen')),
    body: ListView.builder(
      itemCount: homeRoutes.length,
      itemBuilder: (context, index) {
        final route = homeRoutes[index];
        return ListTile(
          leading: Icon(route.icon),
          title: Text(route.title),
          subtitle: route.subtitle != null ? Text(route.subtitle!) : null,
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          onTap: () => context.pushNamed(route.routeName),
        );
      },
    ),
  );
}
