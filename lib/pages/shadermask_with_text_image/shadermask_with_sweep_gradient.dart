import 'package:flutter/material.dart';
import 'dart:math' as math;

class ShaderMaskWithSweepGradient extends StatefulWidget {
  const ShaderMaskWithSweepGradient({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  State<ShaderMaskWithSweepGradient> createState() =>
      _ShaderMaskWithSweepGradientState();
}

class _ShaderMaskWithSweepGradientState
    extends State<ShaderMaskWithSweepGradient> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: ShaderMask(
            // Set the BlendMode to color for image and srcIn for text to see the beautiful animation.
            blendMode: BlendMode.color,
            shaderCallback: (bounds) => const SweepGradient(
              startAngle: 0,
              endAngle: math.pi / 4,
              colors: [
                Colors.blue,
                Colors.red,
              ],
              transform: GradientRotation(math.pi),
            ).createShader(bounds),

            /// Text
            child: const Text('I\'m burning the memories'),

            /// Asset Image
            // child: Image.asset(
            //   'assets/image.jpg',
            //   fit: BoxFit.fill,
            //   height: double.infinity,
            //   width: double.infinity,
            // ),
          ),
        ),
      );
}
