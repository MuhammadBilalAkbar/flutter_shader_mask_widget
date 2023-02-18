import 'package:flutter/material.dart';

import 'package:flutter_shader_mask_widget/pages/shadermask_with_image_text.dart';
import 'package:flutter_shader_mask_widget/pages/shadermask_with_shimmer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            titleTextStyle: TextStyle(
              fontSize: 22.0,
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
        ),
        home: const MyHomePage(),
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('ShaderMask Demo'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ShaderMaskWithImageText(
                        title: 'ShaderMask with Text/Image'),
                  ),
                ),
                child: const Text('ShaderMask with Text/Image'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ShaderMaskWithShimmer(
                        title: 'ShaderMask with Shimmer'),
                  ),
                ),
                child: const Text('ShaderMask with Shimmer Loading Effect'),
              ),
            ],
          ),
        ),
      );
}
