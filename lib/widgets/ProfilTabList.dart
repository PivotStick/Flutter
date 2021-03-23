import 'package:epicture/widgets/ProfilTab.dart';
import 'package:flutter/material.dart';

class ProfilTabList extends StatelessWidget {
  final int currentIndex;
  final List<String> tabs;
  final Function(int) onChange;

  ProfilTabList({this.currentIndex, this.tabs, this.onChange});

  @override
  Widget build(BuildContext context) => Row(
        children: tabs.map((text) {
          int index = tabs.indexOf(text);
          return ProfilTab(
            text,
            onTap: () => onChange(index),
            isActive: index == currentIndex,
          );
        }).toList(),
      );
}
