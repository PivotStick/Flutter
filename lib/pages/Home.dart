import 'package:epicture/models/Gallery.dart';
import 'package:epicture/services/ImgurService.dart';
import 'package:epicture/widgets/GalleryList.dart';
import 'package:epicture/widgets/Heading.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final double height = 225.0;

  List<Gallery> galleries = [];

  Future<void> setGalleries() async {
    var res = await ImgurService.getGalleries();
    setState(() {
      galleries = res;
    });
  }

  @override
  void initState() {
    setGalleries();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Container(
        color: Theme.of(context).backgroundColor,
        child: Stack(
          children: [
            GalleryList(
              galleries: galleries,
              topOffset: height,
            ),
            Heading(height: height),
          ],
        ),
      );
}
