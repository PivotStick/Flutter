import 'package:epicture/models/Gallery.dart';
import 'package:epicture/widgets/ReturnButton.dart';
import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  final Gallery gallery;
  final double gap = 60;

  PostPage(this.gallery);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: gap),
              ReturnButton(),
              SizedBox(height: gap),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  gallery.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Theme.of(context).backgroundColor,
                    fontWeight: FontWeight.w900,
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(height: gap),
              ...gallery.images
                  .map((image) => Column(
                        children: [
                          Image.network(image),
                          SizedBox(height: gap),
                        ],
                      ))
                  .toList(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          foregroundImage: NetworkImage(gallery.authorAvatar),
                        ),
                        SizedBox(width: 20),
                        Text(
                          gallery.author,
                          style: TextStyle(
                              color: Theme.of(context).backgroundColor,
                              fontWeight: FontWeight.w900,
                              fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(height: gap / 2),
                    Text(
                      gallery.description,
                      style: TextStyle(
                        color: Theme.of(context).backgroundColor,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: gap * 4,
              )
            ],
          ),
        ),
      ),
    );
  }
}
