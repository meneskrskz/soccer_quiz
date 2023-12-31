import 'package:flutter/material.dart';
import 'package:soccer_project/second_page.dart';

class first_page extends StatelessWidget {
  static String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[400],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[400],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.settings,
            color: Colors.white,
            size: 35.0,
          ),
        ),
        actions: [
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.diamond_sharp,
                color: Colors.blue[200],
                size: 40.0,
              ),
            ),
          ),
        ],
        title: Icon(
          Icons.favorite,
          color: Colors.red[500],
          size: 30.0,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.sports_football_sharp,
              size: 100.0,
              color: Colors.cyan[900],
            ),
            SizedBox(
              height: 90.0,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, second_page.routeName);
              },
              child: Text(
                "Play",
                style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w900),
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Tasks",
                style: TextStyle(
                  fontSize: 21.5,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Expert",
                style: TextStyle(
                  fontSize: 21.5,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Profile",
                style: TextStyle(
                  fontSize: 21.5,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
