import 'package:flutter/material.dart';

import 'package:components_tutorial/models/menu_option.dart';
import 'package:components_tutorial/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption> [
    MenuOption(route: 'listview1', title: 'Listview 1 Screen', icon: Icons.list, screen: const Listview1Screen()),
    MenuOption(route: 'listview2', title: 'Listview 2 Screen', icon: Icons.list, screen: const Listview2Screen()),
    MenuOption(route: 'card', title: 'Card Screen', icon: Icons.card_giftcard_outlined, screen: const CardScreen()),
    MenuOption(route: 'alert', title: 'Alert Screen', icon: Icons.add_alert_outlined, screen: const AlertScreen()),
    MenuOption(route: 'input', title: 'Input Screen', icon: Icons.text_fields_outlined, screen: const InputScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> routes = {};

    for(MenuOption option in menuOptions) {
      routes.addAll({ option.route: (BuildContext context) => option.screen });
    }

    return routes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const HomeScreen());
  }
}