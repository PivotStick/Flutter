import 'package:flutter/widgets.dart';

abstract class PageNav {
  static final controller = PageController();

  static Duration duration = Duration(seconds: 1);
  static final curve = Curves.easeOutExpo;

  static void to(int page) {
    controller.animateToPage(page, duration: duration, curve: curve);
  }

  static void toHome() {
    to(0);
  }

  static void toProfile() {
    to(1);
  }
}
