import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:asesorias_app_v2/Common/Pages/Profile.dart';
import 'package:asesorias_app_v2/Profesor/ClassList.dart';
import 'package:asesorias_app_v2/Profesor/EmailList.dart';
import 'package:asesorias_app_v2/Profesor/PlacesList.dart';
import 'package:flutter/material.dart';

class ProfesorHome extends StatefulWidget {
  const ProfesorHome({super.key});

  @override
  State<ProfesorHome> createState() => _ProfesorHomeState();
}

class _ProfesorHomeState extends State<ProfesorHome> {
  // list of icons that requiredF
  // by animated navigation bar
  List<IconData> iconList = [
    Icons.list_alt_outlined,
    Icons.home_work_outlined,
    Icons.mail_outline,
    Icons.account_box_outlined
  ];
  int _bottomNavIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
  }
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
        body: Container(
          child: () {
            if (_bottomNavIndex == 0)
              return const ClassList();
            else if (_bottomNavIndex == 1)
              return const PlacesList();
            else if (_bottomNavIndex == 2)
              return const EmailList();
            else
              return const Profile(0);
          }(),
        ), //destination screen
        floatingActionButton: FloatingActionButton(
          onPressed: ()  {
            //if (_bottomNavIndex == 0) {
            ///Maybe Its So Fucking wrong
            //final rslt = 
             Navigator.pushNamed(context, '/NewClass');
            //if (rslt != null) setState(() {});
            //}
          },
          child: const Icon(Icons.note_add_outlined),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: iconList,
          activeIndex: _bottomNavIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap: (index) => setState(() => _bottomNavIndex = index),
          //other params
        ),
      );
    });
  }
}
