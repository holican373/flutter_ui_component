import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(),
        appBar: MyCustomAppBar(
          height: 150,
        ),
        body: Center(
          child: Text(
            'App Bar with Drawer',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: IconButton(
            icon: Icon(
              Icons.chevron_left,
              color: Colors.white,
            ),
            color: Colors.green,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const MyCustomAppBar({
    Key key,
    @required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.green,
          child: Container(
            padding: EdgeInsets.all(5),
            child: Row(children: [
              IconButton(
                color: Colors.white,
                icon: Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      contentPadding: EdgeInsets.all(10),
                    ),
                  ),
                ),
              ),
              IconButton(
                color: Colors.white,
                icon: Icon(Icons.notifications_active),
                onPressed: () => null,
              ),
            ]),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
