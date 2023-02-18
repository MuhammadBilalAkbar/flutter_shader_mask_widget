import 'package:flutter/material.dart';
import 'dart:math' as math;

class ShaderMaskWithImageText extends StatefulWidget {
  const ShaderMaskWithImageText({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  State<ShaderMaskWithImageText> createState() =>
      _ShaderMaskWithImageTextState();
}

class _ShaderMaskWithImageTextState extends State<ShaderMaskWithImageText> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: ShaderMask(
            blendMode: BlendMode.color,
            shaderCallback: (bounds) =>

                /// LinearGradient
                // const LinearGradient(
                //   begin: Alignment.topLeft,
                //   end: Alignment.bottomRight,
                //   colors: [
                //     Colors.red,
                //     Colors.green,
                //     Colors.blue,
                //   ],
                // ).createShader(bounds),

                /// SweepGradient
            //     const SweepGradient(
            //   startAngle: 0,
            //   endAngle: math.pi / 4,
            //   colors: [
            //     Colors.blue,
            //     Colors.red,
            //   ],
            //   transform: GradientRotation(math.pi),
            // ).createShader(bounds),

            /// RadialGradient
                RadialGradient(
              center: Alignment.topLeft,
              radius: 0.2,
              colors: [
                Colors.yellow,
                Colors.deepOrange.shade900,
              ],
              tileMode: TileMode.mirror,
            ).createShader(bounds),

            /// Asset Image
            // child: Image.asset(
            //   'assets/image.jpg',
            //   fit: BoxFit.fill,
            //   height: double.infinity,
            //   width: double.infinity,
            // ),

            /// Text
            child: const Text('I\'m burning the memories'),
          ),
        ),
      );
}
