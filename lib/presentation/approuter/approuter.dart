import 'package:desox_fran_website/presentation/screens/homepage_screen.dart';
import 'package:desox_fran_website/presentation/screens/services_screen.dart';
import 'package:desox_fran_website/presentation/screens/who_we_are_screen.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class AppRouter {
  static final routes = RouteMap(
    routes: {
      HomePageScreen.id: (_) => MaterialPage(
            child: HomePageScreen(),
          ),
      WhoWeAreScreen.id: (_) => MaterialPage(
            child: WhoWeAreScreen(),
          ),
      ServicesScreen.id: (_) => MaterialPage(
            child: ServicesScreen(),
          ),
    },
  );
}
