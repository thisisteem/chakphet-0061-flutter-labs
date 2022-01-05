import 'package:flutter/material.dart';

class ShibaImageAsset extends StatelessWidget {
  const ShibaImageAsset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage("images/shiba4.jpg");
    Image image = Image(
      image: assetImage,
      width: 700,
      height: 400,
    );
    return Container(
      child: image,
    );
  }
}
