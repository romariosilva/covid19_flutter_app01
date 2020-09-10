import 'package:covid19_flutter_app01/constants.dart';
import 'package:covid19_flutter_app01/widgets/my_header.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MyHeader(
            image: "assets/icons/coronadr.svg",            
            textTop: "Get to know",
            textBottom: "About Covid-19",
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Symptoms",
                  style: kTitleTextstyle,
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SymptomCard(
                      image: "assets/images/headache.png",
                      title: "Headache",
                      isActive: true,
                    ),
                    SymptomCard(
                      image: "assets/images/caugh.png",
                      title: "Caugh",
                    ),
                    SymptomCard(
                      image: "assets/images/fever.png",
                      title: "Fever",
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text("Prevention", style: kTitleTextstyle,),
                SizedBox(height: 20)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SymptomCard extends StatelessWidget {

  final String image;
  final String title;
  final bool isActive;

  const SymptomCard({
    Key key, 
    this.image, 
    this.title,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          isActive
          ? BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 20,
              color: kActiveShadowColor
            )
          : BoxShadow(
              offset: Offset(0, 3),
              blurRadius: 6,
              color: kShadowColor
            ),
        ],
      ),
      child: Column(
        children: [
          Image.asset(image, height: 90,),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}