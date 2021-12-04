import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/result.dart';
import 'package:bmi_calculator/widgets/custom_button.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math';

//ENUMERATIONS

enum Gender { male, female }

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double height = 180;
  int weight = 60;
  int age = 18;
  Gender selectedGender = Gender.male;

  double calculateBMI() {
    double result = weight / pow((height / 100), 2);
    return result;
  }

  void onNavigate() {
    double bmiResult = calculateBMI();

    // print(bmiResult);

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ResultScreen(result: bmiResult)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    bgColor: selectedGender == Gender.male
                        ? kSelectedCardColor
                        : kPrimaryColor,
                    onPressed: () {
                      selectedGender = Gender.male;
                      setState(() {});
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.mars, size: 60),
                        const SizedBox(height: 10),
                        Text(
                          'MALE',
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    bgColor: selectedGender == Gender.female
                        ? kSelectedCardColor
                        : kPrimaryColor,
                    onPressed: () {
                      selectedGender = Gender.female;
                      setState(() {});
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.venus, size: 60),
                        const SizedBox(height: 10),
                        Text(
                          'FEMALE',
                          style: kLabelTextStyle,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.round().toString(),
                        style: TextStyle(
                          fontSize: 44,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Colors.grey,
                      thumbColor: kSecondaryColor,
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 16,
                      ),
                      overlayColor: kSecondaryColor.withOpacity(0.26),
                    ),
                    child: Slider(
                      min: 10,
                      max: 300,
                      value: height,
                      onChanged: (value) => setState(() => height = value),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          // weight.toString(),
                          '$weight', // String interpolation
                          style: TextStyle(
                            fontSize: 44,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              onPressed: () {
                                if (weight > 1) {
                                  setState(() => weight--);
                                }
                              },
                              child: Icon(FontAwesomeIcons.minus),
                              fillColor: Colors.grey,
                              shape: CircleBorder(),
                              constraints: BoxConstraints.tightFor(
                                width: 52,
                                height: 52,
                              ),
                            ),
                            const SizedBox(width: 10),
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: Icon(FontAwesomeIcons.plus),
                              fillColor: Colors.grey,
                              shape: CircleBorder(),
                              constraints: BoxConstraints.tightFor(
                                width: 52,
                                height: 52,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          age.toString(),
                          style: TextStyle(
                            fontSize: 44,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              onPressed: () {
                                if (age > 1) {
                                  setState(() => age--);
                                }
                              },
                              child: Icon(FontAwesomeIcons.minus),
                              fillColor: Colors.grey,
                              shape: CircleBorder(),
                              constraints: BoxConstraints.tightFor(
                                width: 52,
                                height: 52,
                              ),
                            ),
                            const SizedBox(width: 10),
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: Icon(FontAwesomeIcons.plus),
                              fillColor: Colors.grey,
                              shape: CircleBorder(),
                              constraints: BoxConstraints.tightFor(
                                width: 52,
                                height: 52,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomButton(
            title: 'Calculate',
            onPressed: onNavigate,
          ),
        ],
      ),
    );
  }
}
