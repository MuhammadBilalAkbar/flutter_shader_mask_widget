import 'package:flutter/material.dart';
import 'dart:math' as math;

import '../../utils/widgets.dart';

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
            // Set the BlendMode to color for image and srcIn for text.
            blendMode: BlendMode.srcIn,
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
            child: const TextWidget(),

            /// Asset Image
            // child: const AssetImageWidget(),
          ),
        ),
      );
}
