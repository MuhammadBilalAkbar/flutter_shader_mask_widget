import 'package:flutter/material.dart';

import '../utils/constants.dart';
import 'shadermask_with_text_image/shadermask_with_linear_gradient.dart';
import 'shadermask_with_text_image/shadermask_with_radial_gradient.dart';
import 'shadermask_with_text_image/shadermask_with_sweep_gradient.dart';

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
              heightMedium,
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ShaderMaskWithLinearGradient(
                        title: 'LinearGradient With Text/Image'),
                  ),
                ),
                child: const Text('LinearGradient'),
              ),
              heightMedium,
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ShaderMaskWithSweepGradient(
                        title: 'SweepGradient With Text/Image'),
                  ),
                ),
                child: const Text('SweepGradient'),
              ),
              heightMedium,
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ShaderMaskWithRadialGradient(
                        title: 'RadialGradient With Text/Image'),
                  ),
                ),
                child: const Text('RadialGradient'),
              ),
              heightMedium,
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ShaderMaskWithSweepGradient(
                        title: 'ShaderMask with Shimmer'),
                  ),
                ),
                child: const Text('ShaderMask with Shimmer'),
              ),
            ],
          ),
        ),
      );
}
