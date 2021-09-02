import 'package:bmi_calculator/calculation_brain.dart';
import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/constants.dart';

// Enum Gender
enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // i = male, 2 = female
  /* void updateColor(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (maleCardColor == inavtiveResusableCardColor) {
        maleCardColor = avtiveResusableCardColor;
        femaleCardColor = inavtiveResusableCardColor;
      } else {
        maleCardColor = inavtiveResusableCardColor;
      }
    } else if(selectedGender == Gender.female){
      if (femaleCardColor == inavtiveResusableCardColor) {
        femaleCardColor = avtiveResusableCardColor;
        maleCardColor = inavtiveResusableCardColor;
      } else {
        femaleCardColor = inavtiveResusableCardColor;
      }
    }
  }
*/
  Gender selectGender;
  int height = 180;
  int weight = 20;
  int age = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
          backgroundColor: kinavtiveResusableCardColor,
          //  toolbarHeight: 50
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                // Gender Containers - male and female
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                        colour: selectGender == Gender.male
                            ? kavtiveResusableCardColor
                            : kinavtiveResusableCardColor,
                        cardChild: iconContent(FontAwesomeIcons.mars, 'MALE'),
                        onPressed: () {
                          setState(() {
                            selectGender = Gender.male;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        // 8. [Dart] Ternary Operator
                        colour: selectGender == Gender.female
                            ? kavtiveResusableCardColor
                            : kinavtiveResusableCardColor,
                        cardChild:
                            iconContent(FontAwesomeIcons.venus, 'FEMALE'),
                        onPressed: () {
                          // 9. [Dart] Functions as First Order Objects
                          setState(() {
                            selectGender = Gender.female;
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                //   2nd Container ---- HEIGHT
                child: ReusableCard(
                  colour: kinavtiveResusableCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: klableTextStyle,
                      ),
                      Row(
                        //  180cm
                        mainAxisAlignment: MainAxisAlignment.center, // height
                        crossAxisAlignment:
                            CrossAxisAlignment.baseline, // width
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: knumberTextStyle,
                          ),
                          Text(
                            ' cm',
                            style: klableTextStyle,
                          )
                        ],
                      ),
                      Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                          colour: kinavtiveResusableCardColor,
                          cardChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'WEIGHT',
                                style: klableTextStyle,
                              ),
                              Text(
                                weight.toString(),
                                style: knumberTextStyle,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RoundIconButton(
                                    passedChild: FontAwesomeIcons.plus,
                                    Uonpressed: () {
                                      setState(() {
                                        if (weight < 200) {
                                          weight++;
                                        }
                                      });
                                    },
                                    UlongOnpressed: () {
                                      setState(() {
                                        if (weight < 200) {
                                          weight += 5;
                                        }
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  RoundIconButton(
                                    passedChild: FontAwesomeIcons.minus,
                                    Uonpressed: () {
                                      setState(() {
                                        if (weight > 5) {
                                          weight--;
                                        }
                                      });
                                    },
                                    UlongOnpressed: () {
                                      setState(() {
                                        if (weight > 5) {
                                          weight = weight - 5;
                                        }
                                      });
                                    },
                                  ),
                                ],
                              )
                            ],
                          )),
                    ),
                    Expanded(
                      child: ReusableCard(
                          colour: kinavtiveResusableCardColor,
                          cardChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'AGE',
                                style: klableTextStyle,
                              ),
                              Text(
                                age.toString(),
                                style: knumberTextStyle,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RoundIconButton(
                                    passedChild: FontAwesomeIcons.plus,
                                    Uonpressed: () {
                                      setState(() {
                                        if (age < 100) {
                                          age++;
                                        }
                                      });
                                    },
                                    UlongOnpressed: () {
                                      setState(() {
                                        if (age < 100) {
                                          age = age + 5;
                                        }
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  RoundIconButton(
                                    passedChild: FontAwesomeIcons.minus,
                                    Uonpressed: () {
                                      setState(() {
                                        if (age > 1) {
                                          age--;
                                        }
                                      });
                                    },
                                    UlongOnpressed: () {
                                      setState(() {
                                        if (age > 1) {
                                          age = age - 5;
                                        }
                                      });
                                    },
                                  ),
                                ],
                              )
                            ],
                          )),
                    )
                  ],
                ),
              ),
              // Bottom pink bar
              bottomButton(
                'CALCULATE',
                () {
                  // onTap
                  CalculatorBrain calc =
                      CalculatorBrain(height: height, weight: weight);

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => resultPage(calc.CalculateBMI(),
                            calc.getResult(), calc.bmiResultInterpreation())),
                  );
                },
              )
            ],
          ),
        ));
  }
}

class bottomButton extends StatelessWidget {
  bottomButton(@required this.buttonTitle, @required this.onTap);
  final Function onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: klargeButtonTextStyle,
          ),
        ),
        color: kbottomContainerColor,
        margin: EdgeInsets.only(top: 5.0),
        height: kbottomContainerHeight + 5,
        width: double.infinity,
      ),
    );
  }
}

class iconContent extends StatelessWidget {
  final IconData icon;
  final String text;
  iconContent(@required this.icon, @required this.text);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98)),
        )
      ],
    );
  }
}

// ReusableCard is inherited from StatelessWidget - use extends keyword for inheritance
class ReusableCard extends StatelessWidget {
  // StatelessWidgets are immutable (unchanged)

  ReusableCard(
      {@required this.colour,
      this.cardChild,
      this.onPressed}); // @required is used when parameter is required

  final Color colour; // final - once set, cannot be changed
  // final & const
  // Creating child
  final Widget cardChild;
  Function onPressed;
  @override // this keyword will override default properties
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          child: cardChild,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: colour,
          )),
    );
  }
}

// for plus and minus icons of weight and age
class RoundIconButton extends StatelessWidget {
  RoundIconButton(
      {@required this.passedChild,
      @required this.Uonpressed,
      @required this.UlongOnpressed});
  final IconData passedChild;
  final Function Uonpressed;
  final Function UlongOnpressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        child: Icon(passedChild),
        shape: CircleBorder(),
        fillColor: Color(0xFF4C4F5E),
        constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
        elevation: 6.0,
        onPressed: Uonpressed,
        onLongPress: UlongOnpressed,
    );
  }
}
