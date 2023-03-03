import 'package:flutter/material.dart';

import 'pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter ShaderMask Widget',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          textTheme: const TextTheme(
            bodyMedium: TextStyle(
              fontSize: 80.0,
              fontWeight: FontWeight.bold,
            ),
            labelLarge: TextStyle(fontSize: 24.0),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
            ),
          ),
        ),
        home: const HomePage(),
      );
}
