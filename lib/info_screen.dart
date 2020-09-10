import 'package:covid19_flutter_app01/constants.dart';
import 'package:covid19_flutter_app01/widgets/my_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            MyHeader(
              image: "assets/icons/coronadr.svg",            
              textTop: "Conheça mais",
              textBottom: "Sobre Covid-19",
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sintomas",
                    style: kTitleTextstyle,
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SymptomCard(
                        image: "assets/images/headache.png",
                        title: "Dor de cabeça",
                        isActive: true,
                      ),
                      SymptomCard(
                        image: "assets/images/caugh.png",
                        title: "Tosse",
                      ),
                      SymptomCard(
                        image: "assets/images/fever.png",
                        title: "Febre",
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text("Prevenção", style: kTitleTextstyle,),
                  SizedBox(height: 20),
                  PreventCard(
                    image: "assets/images/wear_mask.png",
                    text: "Desde o surto de coronavírus, alguns lugares adotaram o uso de máscaras faciais",
                    title: "Use máscara facial",
                  ),
                  PreventCard(
                    image: "assets/images/wash_hands.png",
                    text: "O simple ato de lavar as mão, pode evitar a propação do vírus",
                    title: "Lave as mãos",
                  ),
                  SizedBox(height: 50),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PreventCard extends StatelessWidget {

  final String image;
  final String title;
  final String text;

  const PreventCard({
    Key key, 
    this.image, 
    this.title, 
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 156,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Container(
              height: 136,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 8),
                    blurRadius: 24,
                    color: kShadowColor
                  ),
                ]
              ),
            ),
            Image.asset(image),
            Positioned(
              left: 130,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                height: 136,
                width: MediaQuery.of(context).size.width - 170,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: kTitleTextstyle.copyWith(
                        fontSize: 16
                      ),
                    ),
                    Text(
                      text,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: SvgPicture.asset("assets/icons/forward.svg")
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
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