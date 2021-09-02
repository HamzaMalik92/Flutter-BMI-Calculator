import 'package:flutter/material.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:bmi_calculator/constants.dart';

// for disabling landscape mode of app
import 'package:flutter/services.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // disabling landscape mode of app
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
            primaryColor: Color(0xFF0A0E21),
            scaffoldBackgroundColor: Color(0xFF0A0E21),
            textTheme:
                TextTheme(bodyText2: TextStyle(color: Color(0xFFFFFFFF))),

            //  Slider Theme - all sliders will have below theme
            sliderTheme: SliderTheme.of(context).copyWith(
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 13),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 25),
              thumbColor: kbottomContainerColor,
              overlayColor: Color(0x29EB1555),
              activeTrackColor: Colors.white,
              inactiveTrackColor: Color(0xFF8D8E98),
            )),
         //  home: InputPage(),   // input_page.dart
        // navigation
        initialRoute: '/',
        // map ----- Map<string,int> myMap={ 'Hamza':2934',Ahmad':2934}
        routes: {
          '/': (context) => InputPage(),
        });


  }
}
