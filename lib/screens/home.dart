import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/result.dart';
import 'package:bmi_calculator/widgets/custom_button.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//ENUMERATIONS

enum Gender { male, female }

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double height = 180;
  Gender selectedGender = Gender.male;

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
                      print('MALE selected');
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
                      print('FEMALE selected');
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
                      onChanged: (value) {
                        height = value;
                        print(height);
                        setState(() {});
                      },
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
                          '60',
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
                              onPressed: () {},
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
                              onPressed: () {},
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
                          '20',
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
                              onPressed: () {},
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
                              onPressed: () {},
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResultScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
