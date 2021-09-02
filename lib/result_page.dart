import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/input_page.dart';

class resultPage extends StatelessWidget {
  resultPage(@required this.bmiResult, @required this.bmiResultTest,
      @required this.bmiResultInterpreation);
  final String bmiResult;
  final String bmiResultTest;
  final String bmiResultInterpreation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  child: Center(
                      child: Text(
                    'Your Result',
                    style: ktitleTextStyle,
                  )),
                ),
              ),
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ReusableCard(
                    colour: kavtiveResusableCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          bmiResultTest.toUpperCase(),
                          style: kResultTextStyle,
                        ),
                        Text(
                          bmiResult,
                          style: kBMITextStyle,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12,right: 12),
                          child: Text(
                            bmiResultInterpreation,
                            style: kUserBMITextStyle,
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              bottomButton(
                'RE-CALCULATE',
                () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ));
  }
}
