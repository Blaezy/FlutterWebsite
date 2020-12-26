import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  List<Widget> PageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Website \n Developers",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 80),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 100),
              child: Text(
                "We have taken each and every Project given to us as challenge,Which helped us to acheve our goal.",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.white,
                onPressed: () {},
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  child: Text(
                    "Our Packages",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                )),
          ],
        ),
      ),
      Image.asset(
        "images/3125017.png",
        width: width,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800)
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: PageChildren(constraints.biggest.width / 2.1),
          ),
        );
      else
        return Column(
          children: PageChildren(constraints.biggest.width),
        );
    });
  }
}
