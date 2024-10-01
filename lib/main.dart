import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/config/router.dart';
import 'core/config/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    precacheImage(const AssetImage('assets/bg/bg.png'), context);
    precacheImage(const AssetImage('assets/bg/bg1.jpg'), context);
    precacheImage(const AssetImage('assets/bg/bg2.jpg'), context);
    precacheImage(const AssetImage('assets/bg/bg3.jpg'), context);
    precacheImage(const AssetImage('assets/bg/bg4.jpg'), context);
    precacheImage(const AssetImage('assets/bg/bg5.png'), context);
    precacheImage(const AssetImage('assets/bg/bg6.png'), context);
    precacheImage(const AssetImage('assets/bg/bg7.png'), context);
    precacheImage(const AssetImage('assets/bg/bg8.png'), context);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: theme,
      routerConfig: routerConfig,
    );
  }
}
