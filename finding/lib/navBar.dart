import 'package:flutter/material.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';
import 'package:motion_tab_bar_v2/motion-tab-controller.dart';
import 'package:motion_tab_bar_v2/motion-badge.widget.dart';
import 'home.dart';
import 'package:finding/MESSAGE PAGE/messageScreen.dart';
import 'package:finding/ACCOUNT PAGE/accountScreen.dart';

void main() {
  runApp(MaterialApp(
    home: NavigationBarPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class NavigationBarPage extends StatefulWidget {
  @override
  _NavigationBarPageState createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage>
    with SingleTickerProviderStateMixin {
  late MotionTabBarController _motionTabBarController;

  @override
  void initState() {
    super.initState();
   
    _motionTabBarController = MotionTabBarController(
      initialIndex: 0, 
      length: 3,
      vsync: this,
    );
  }

  @override
  void dispose() {
    
    _motionTabBarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MotionTabBar(
        controller: _motionTabBarController, 
        initialSelectedTab: "Home",
        labels: const ["Home", "Message", "Account"],
        icons: const [Icons.home, Icons.message, Icons.account_circle],

       
        // badges: const [
        //   null,
        //   MotionBadgeWidget(
        //     text: '5',
        //     textColor: Colors.white,
        //     color: Colors.red,
        //     size: 18,
        //   ),
        //   null,
        // ],
        tabSize: 50,
        tabBarHeight: 55,
        textStyle: const TextStyle(
          fontSize: 12,
          color: Color.fromARGB(255, 255, 255, 255),
          fontWeight: FontWeight.w500,
        ),
        tabIconColor: const Color.fromARGB(255, 255, 255, 255),
        tabIconSize: 28.0,
        tabIconSelectedSize: 26.0,
        tabSelectedColor: const Color.fromARGB(255, 252, 252, 252),
        tabIconSelectedColor:const Color.fromARGB(255, 14, 79, 71),
        tabBarColor: const Color.fromARGB(255, 14, 79, 71),
        onTabItemSelected: (int index) {
          setState(() {
            _motionTabBarController.index = index; 
          });
        },
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(), 
        controller: _motionTabBarController, 
        children: <Widget>[
          HomePage(), 
          MessagePage(),
          AccountPage(), 
        ],
      ),
   
    );
  }
}
