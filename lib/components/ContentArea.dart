import 'package:flutter/material.dart';

class ContentArea extends StatefulWidget {
  @override
  _ContentAreaState createState() => _ContentAreaState();
}

class _ContentAreaState extends State<ContentArea> {
  Drawer getNavDrawer(BuildContext context) {
    var myNavChildren = [
      getNavItem(Icons.settings, "Settings"),
      getNavItem(Icons.home, "Home"),
      getNavItem(Icons.account_box, "Account"),
    ];

    ListView listView = ListView(children: myNavChildren);
    return Drawer(child: listView);
  }

  ListTile getNavItem(var icon, String s) {
    return ListTile(
      leading: Icon(icon),
      title: Text(s),
      onTap: () {
        // setState(() {
        //   // pop closes the drawer
        //   Navigator.of(context).pop();
        //   // navigate to the route
        //   Navigator.of(context).pushNamed(routeName);
        // });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Drawer Example"),
      ),
      body: Container(
          child: Center(
        child: Text("Home Screen"),
      )),
      // Set the nav drawer
      drawer: getNavDrawer(context),
    );
  }
}
