//import 'package:Assignment/Screen/LaptopScreen.dart';
import 'package:Assignment/Screen/LaptopScreen.dart';
import 'package:Assignment/Screen/MobileScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  int currentIndex;
  @override
  void initState() {
    super.initState();
    currentIndex = 0;
    tabController = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assignment"),
        centerTitle: true,
        bottom: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          tabs: <Widget>[
            Tab(child: Text("Mobiles")),
            Tab(child: Text("Laptop")),
          ],
        ),
      ),
      body: TabBarView(
        physics: BouncingScrollPhysics(),
        controller: tabController,
        children: <Widget>[
          MobileScreen(),
          LaptopScreen(),
        ],
      ),
    );
  }
}
