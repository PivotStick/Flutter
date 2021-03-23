import 'package:epicture/models/Gallery.dart';
import 'package:epicture/pages/PostPage.dart';
import 'package:flutter/material.dart';

class GalleryItem extends StatelessWidget {
  final Gallery gallery;
  final double padding = 35;

  GalleryItem({this.gallery});

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PostPage(gallery),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 6,
              child: Container(
                padding: EdgeInsets.only(
                  right: padding,
                  top: padding,
                  bottom: padding,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(25),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(25 / 2),
                      ),
                      child: Image.network(
                        gallery.images.first,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(gallery.title,
                        style: TextStyle(
                          color: Theme.of(context).backgroundColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ))
                  ],
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      );
}
