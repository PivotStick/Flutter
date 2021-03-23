import 'package:epicture/utils/PageNav.dart';
import 'package:epicture/widgets/ProfilPicture.dart';
import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final double height;

  Heading({this.height});

  @override
  Widget build(BuildContext context) => Container(
        height: height,
        child: CustomPaint(
          painter: Background(
            radius: 40,
            color: Theme.of(context).primaryColor,
            height: height,
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pivotass",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                                color: Theme.of(context).backgroundColor),
                          ),
                          Text(
                            "pivoorigami@gmail.com",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Theme.of(context).backgroundColor),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () => PageNav.toProfile(),
                        child: ProfilPicture(),
                      ),
                    ],
                  ),
                  TextField(
                    cursorColor: Theme.of(context).backgroundColor,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          color: Theme.of(context).backgroundColor,
                          width: 4,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          color: Theme.of(context).backgroundColor,
                          width: 3,
                        ),
                      ),
                      suffixIcon: Icon(
                        Icons.search,
                        size: 22,
                        color: Theme.of(context).backgroundColor,
                      ),
                      filled: true,
                      fillColor:
                          Theme.of(context).backgroundColor.withOpacity(0.35),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                      hintText: "Images, #tags, @users oh my!",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).backgroundColor,
                      ),
                    ),
                    onSubmitted: (value) => print(value),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}

class Background extends CustomPainter {
  final double height;
  final double radius;
  final Color color;

  Background({
    this.height = 150,
    this.radius = 30,
    @required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    var paint = Paint();

    path.lineTo(size.width, 0);
    path.lineTo(size.width, height + radius);

    path.cubicTo(
      size.width,
      height + radius,
      size.width,
      height,
      size.width - radius,
      height,
    );

    path.lineTo(radius, height);

    path.cubicTo(
      radius,
      height,
      0,
      height,
      0,
      height - radius,
    );

    paint.color = color;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
