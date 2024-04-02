import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:asesorias_app_v2/Common/Constants.dart';
import 'package:flutter/material.dart';

class ProfesorHome extends StatefulWidget {
  const ProfesorHome({super.key});

  @override
  State<ProfesorHome> createState() => _ProfesorHomeState();
}

class _ProfesorHomeState extends State<ProfesorHome> {  
  // list of icons that required 
  // by animated navigation bar 
  List<IconData> iconList = [ 
      Icons.home_work_outlined,
      Icons.account_box_outlined,
      Icons.list_alt_outlined,
      Icons.mail_outline
    ];
  int _bottomNavIndex=0;
  @override
  void initState() {
    // TODO: implement initState
    
  }
  @override
  Widget build(BuildContext context) {
    return  Builder(
      builder: (context) {
        
        return Scaffold(
          body: Container(), //destination screen
          floatingActionButton: FloatingActionButton(
            onPressed: () {  },
            child: Icon( Icons.note_add_outlined ),
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
      }
    );
  }
}
