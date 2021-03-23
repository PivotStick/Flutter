import 'package:epicture/models/Gallery.dart';
import 'package:epicture/widgets/GalleryItem.dart';
import 'package:flutter/material.dart';

class GalleryList extends StatelessWidget {
  final List<Gallery> galleries;
  final double topOffset;

  GalleryList({
    @required this.galleries,
    this.topOffset,
  });

  @override
  Widget build(BuildContext context) => ListView.separated(
        padding: EdgeInsets.only(top: topOffset + 60),
        itemCount: galleries.length,
        itemBuilder: (context, index) => GalleryItem(gallery: galleries[index]),
        separatorBuilder: (context, index) => SizedBox(height: 20),
      );
}
