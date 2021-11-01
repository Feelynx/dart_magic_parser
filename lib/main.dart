import 'package:desox_fran_website/presentation/approuter/approuter.dart';
import 'package:desox_fran_website/presentation/delegates/no_animation_transition_delegates.dart';
import 'package:desox_fran_website/util/costants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'configure_nonweb.dart' if (dart.library.html) 'configure_web.dart';

void main() {
  configureApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Studio De Sossi Franchellucci',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: kPantoneWhite,
        colorScheme: ThemeData().colorScheme.copyWith(
              secondary: kPantonePrimaryLight,
            ),
        appBarTheme: AppBarTheme(color: kPantonePrimaryDark),
        textTheme: ThemeData.light().textTheme.apply(
              fontFamily: 'Sora',
            ),
        primaryTextTheme: ThemeData.light().textTheme.apply(
              fontFamily: 'Sora',
            ),
        accentTextTheme: ThemeData.light().textTheme.apply(
              fontFamily: 'Sora',
            ),
        toggleableActiveColor: kPantonePrimary,
      ),
      routerDelegate: RoutemasterDelegate(
        routesBuilder: (context) => AppRouter.routes,
        transitionDelegate: NoAnimationTransitionDelegate(),
      ),
      routeInformationParser: RoutemasterParser(),
    );
  }
}
