import 'package:flutter/material.dart';

class ReturnButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.horizontal(right: Radius.circular(15)),
            color: Theme.of(context).backgroundColor,
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Icon(
              Icons.arrow_back_ios,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      );
}
