import 'package:flutter/material.dart';

class ProfilPicture extends StatelessWidget {
  final double size;

  ProfilPicture({this.size = 80});

  @override
  Widget build(BuildContext context) => ClipRRect(
        borderRadius: BorderRadius.circular(size / 4),
        child: Image.network(
          "https://imgur.com/user/pivotass/avatar",
          width: size,
        ),
      );
}
