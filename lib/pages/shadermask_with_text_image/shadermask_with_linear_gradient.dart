import 'package:flutter/material.dart';

class ShaderMaskWithLinearGradient extends StatefulWidget {
  const ShaderMaskWithLinearGradient({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  State<ShaderMaskWithLinearGradient> createState() =>
      _ShaderMaskWithLinearGradientState();
}

class _ShaderMaskWithLinearGradientState
    extends State<ShaderMaskWithLinearGradient> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: ShaderMask(
            // Show the source image, but only where the two images overlap.
            blendMode: BlendMode.srcIn,
            // Set the BlendMode to color for image and srcIn for text.
            //Take the hue and saturation of the source image, and the luminosity of the destination image.
            // blendMode: BlendMode.color,
            shaderCallback: (bounds) => const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.yellow,
                Colors.deepOrange,
              ],
            ).createShader(bounds),

            /// Text
            child: const Text('ShaderMask'),

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
