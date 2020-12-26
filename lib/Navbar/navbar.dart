import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200)
        return DesktopNavBar();
      else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200)
        return DesktopNavBar();
      else
        return MobileNavBar();
    });
  }
}

class DesktopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        // constraints: BoxConstraints(maxWidth: 1200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "PortFolio Website",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30),
            ),
            Row(
              children: [
                Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "About Us",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Potfolio",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  color: Colors.pink,
                  onPressed: () {},
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MobileNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(
          children: [
            Text(
              "PortFolio Website",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Home",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "About Us",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Potfolio",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    color: Colors.pink,
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      child: Text(
                        "Get Started",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
