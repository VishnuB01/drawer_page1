import 'package:drawer_page1/page2_column.dart';
import 'package:drawer_page1/page3_column.dart';
import 'package:drawer_page1/page4_column.dart';
import 'package:flutter/material.dart';
import 'page1_column.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Homepage();
  }
}

class _Homepage extends State<Homepage> {
  var scrind = 0;
  List screens = [
    const Page1Column(),
    const Page2column(),
    const Page3Column(),
    const Page4Column() /*,const Page5Column()*/
  ];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String AppbarTitleText = 'Drawer Demo';
  @override
  Widget build(context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 4,
        centerTitle: false,
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
        title: Text(AppbarTitleText),
      ),
      drawer: Drawer(
        elevation: 16.0,
        child: Column(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text('Vishnu'),
              accountEmail: Text('Vishnu@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: <Widget>[CircleAvatar()],
            ),
            ListTile(
              leading: const Icon(Icons.android),
              title: const Text('UI Demo'),
              onTap: () {
                closeDrawerOnTap();
                setState(() {
                  scrind = 2;
                  print(scrind);
                  AppbarTitleText = 'UI Demo';
                });
              },
            ),
            const Divider(height: 0.5),
            ListTile(
              leading: const Icon(Icons.drag_indicator_rounded),
              title: Text('Dice'),
              onTap: () {
                closeDrawerOnTap();
                setState(() {
                  scrind = 1;
                  print(scrind);
                  AppbarTitleText = 'Dice';
                });
              },
            ),
            const Divider(height: 0.5),

            const Divider(height: 0.5),
            ListTile(
              leading: Icon(Icons.login_outlined),
              title: Text('Login Form'),
              onTap: () {
                closeDrawerOnTap();
                setState(() {
                  scrind = 3;
                  AppbarTitleText = 'Login Form ';
                });
              },
            ),
          ],
        ),
      ),
      body: screens[scrind],
    );
  }

  void closeDrawerOnTap() {
    if (_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState?.openEndDrawer();
    } else {
      _scaffoldKey.currentState?.openDrawer();
    }
  }
}
