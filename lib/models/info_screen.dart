import 'package:covid_app/constants/constants.dart';
import 'package:covid_app/widgets/header.dart';
import 'package:covid_app/widgets/prevention_card.dart';
import 'package:covid_app/widgets/symptom_card.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyHeader(
              image: 'assets/icons/coronadr.svg',
              textTop: 'Get to Know',
              textBottom: 'About Covid-19',
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Symptoms',
                    style: kTitleTextstyle,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SymptomCard(
                        image: 'assets/images/headache.png',
                        text: 'Headache',
                      ),
                      SymptomCard(
                        image: 'assets/images/caugh.png',
                        text: 'Cough',
                        isActive: true,
                      ),
                      SymptomCard(
                        image: 'assets/images/fever.png',
                        text: 'Fever',
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Prevention',
                    style: kTitleTextstyle,
                  ),
                  SizedBox(height: 20),
                  PreventionCard(
                    image: 'assets/images/wear_mask.png',
                    title: 'Wear a mask',
                    text:
                        'Since the start of the coronavirus outbreak, some places have fully embraced wearing facemasks',
                  ),
                  PreventionCard(
                    image: 'assets/images/wash_hands.png',
                    title: 'Wash your hands',
                    text:
                        'Since the start of the coronavirus outbreak, some places have fully embraced wearing facemasks',
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
