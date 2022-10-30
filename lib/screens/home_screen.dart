import 'package:components_tutorial/models/menu_option.dart';
import 'package:components_tutorial/router/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<MenuOption> menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Components in Flutter'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(
                    menuOptions[index].icon,
                  ),
                  title: Text(menuOptions[index].title),
                  onTap: () {
                    Navigator.pushNamed(context, menuOptions[index].route);
                  },
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: menuOptions.length));
  }
}
