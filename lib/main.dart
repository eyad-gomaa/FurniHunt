import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:furni_hunt/core/themes/dark_theme.dart';
import 'package:furni_hunt/core/utils/app_router.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
    );
  }
}
