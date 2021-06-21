import 'package:covid19_ui/core/constants.dart';
import 'package:covid19_ui/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          AppColor.mainColor,
          AppColor.mainColor.withOpacity(
            0.5,
          ),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Stack(
          children: [
            build_header(),
            Align(
              alignment: Alignment.center,
              child: Container(
                  width: MediaQuery.of(context).size.width * .85,
                  child: Image.asset("assets/images/virus.png")),
            ),
            Positioned(
              top: MediaQuery.of(context).size.width * .54,
              right: 1,
              child: Container(
                  width: MediaQuery.of(context).size.width * .38,
                  child: Image.asset("assets/images/person.png")),
            ),
            build_footer(context)
          ],
        ),
      ),
    );
  }

  Padding build_header() {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Align(
        alignment: Alignment.topCenter,
        child: Image.asset(
          "assets/images/logo.png",
        ),
      ),
    );
  }

  Positioned build_footer(BuildContext context) {
    return Positioned(
      bottom: 50,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          children: <Widget>[
            Text(
              "Coronavirus Disease(Covid-19)",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w800),
            ),
            Text(
              "Is a harmfull disease cause by a new \nVirus",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => HomePage(),
                  ),
                );
              },
              child: Container(
                height: 45,
                width: MediaQuery.of(context).size.width * .65,
                child: Text(
                  "Get Started",
                  style: TextStyle(
                      color: AppColor.mainColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(1, 1),
                          blurRadius: 3,
                          spreadRadius: 0.1)
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
