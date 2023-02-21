import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Text('ShaderMask');
}

class AssetImageWidget extends StatelessWidget {
  const AssetImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context)=>
    Image.asset(
      'assets/image.jpg',
      fit: BoxFit.fill,
      height: double.infinity,
      width: double.infinity,
    );
  }
