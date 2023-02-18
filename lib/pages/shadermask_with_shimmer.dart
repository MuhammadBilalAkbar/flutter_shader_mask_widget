import 'package:flutter/material.dart';

class ShaderMaskWithShimmer extends StatefulWidget {
  const ShaderMaskWithShimmer({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  State<ShaderMaskWithShimmer> createState() => _ShaderMaskWithShimmerState();
}

class _ShaderMaskWithShimmerState extends State<ShaderMaskWithShimmer> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ShaderMask(
          blendMode: BlendMode.color,
          shaderCallback: (bounds) => const LinearGradient(
            colors: [Colors.white24, Colors.grey],
          ).createShader(bounds),
          child: Column(
            children: [
              Container(height: 10, color: Colors.white),
              const SizedBox(height: 100),
              Container(height: 10, color: Colors.white),
              const SizedBox(height: 10),
              Container(height: 10, color: Colors.white),
              const SizedBox(height: 10),
              Container(height: 10, color: Colors.white),
              const SizedBox(height: 10),
              Container(height: 10, color: Colors.white),
            ],
          ),
        ),
      );
}
