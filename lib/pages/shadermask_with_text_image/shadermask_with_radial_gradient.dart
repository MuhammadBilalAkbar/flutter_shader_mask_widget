import 'package:flutter/material.dart';

class ShaderMaskWithRadialGradient extends StatefulWidget {
  const ShaderMaskWithRadialGradient({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  State<ShaderMaskWithRadialGradient> createState() =>
      _ShaderMaskWithRadialGradientState();
}

class _ShaderMaskWithRadialGradientState
    extends State<ShaderMaskWithRadialGradient> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: ShaderMask(
            // Set the BlendMode to color for image and srcIn for text to see the beautiful animation.
            blendMode: BlendMode.color,
            shaderCallback: (bounds) => RadialGradient(
              center: Alignment.topLeft,
              radius: 0.2,
              colors: [
                Colors.yellow,
                Colors.deepOrange.shade900,
              ],
              tileMode: TileMode.mirror,
            ).createShader(bounds),

            /// Text
            child: const Text('I\'m burning the memories'),

            /// Asset
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
