import 'package:epicture/utils/PageNav.dart';
import 'package:epicture/widgets/ProfilPicture.dart';
import 'package:epicture/widgets/ProfilTabList.dart';
import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  Profil({Key key}) : super(key: key);

  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  int _currentPage = 0;
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => PageNav.toHome(),
                          child: ProfilPicture(),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    ProfilTabList(
                      currentIndex: _currentPage,
                      onChange: (page) => _controller.animateToPage(
                        page,
                        duration: Duration(seconds: 1),
                        curve: Curves.easeOutExpo,
                      ),
                      tabs: ["Posts", "Favorites"],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: PageView(
                  controller: _controller,
                  onPageChanged: (value) => setState(() {
                    _currentPage = value;
                  }),
                  children: [
                    Container(alignment: Alignment.center),
                    Container(alignment: Alignment.center, color: Colors.green),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
