import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../Common/Profile.dart';

class StudentHome extends StatefulWidget {
  const StudentHome({super.key});

  @override
  State<StudentHome> createState() => _StudentHomeState();
}

class _StudentHomeState extends State<StudentHome> {
    List<IconData> iconList = [ 
      Icons.list_alt_outlined,
      Icons.mail_outline,
      Icons.account_box_outlined,
      Icons.home_work_outlined
    ];
  int _bottomNavIndex=0;
  @override
  void initState() {
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return  Builder(
      builder: (context) {
        
        return Scaffold(
          body: Container(
            child: (){
              if(_bottomNavIndex==0) {
                return const NextClass();
              }
               else
              if(_bottomNavIndex==1)
                return const Profile(1);
              

            }(),
          ), //destination screen
          floatingActionButton: FloatingActionButton(
            onPressed: () {  },
            child: const Icon( Icons.note_add_outlined ),
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
