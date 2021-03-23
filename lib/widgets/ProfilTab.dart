import 'package:flutter/material.dart';

class ProfilTab extends StatelessWidget {
  final String text;
  final bool isActive;
  final Function onTap;

  ProfilTab(this.text, {this.isActive, this.onTap});

  @override
  Widget build(BuildContext context) => Expanded(
        child: GestureDetector(
          onTap: onTap,
          child: Column(
            children: [
              Text(
                text,
                style: TextStyle(
                  color: Theme.of(context).backgroundColor,
                  fontSize: 22,
                ),
              ),
              AnimatedContainer(
                decoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor,
                    borderRadius: BorderRadius.circular(4)),
                curve: Curves.easeOutExpo,
                duration: const Duration(seconds: 1),
                width: isActive ? 100 : 0,
                height: 4,
              )
            ],
          ),
        ),
      );
}
