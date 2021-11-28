import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF111328),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF111328),
        ),
      ),
      home: Scaffold(
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.mars, size: 60),
                          const SizedBox(height: 10),
                          Text(
                            'MALE',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.grey,
                            ),
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
                          Icon(FontAwesomeIcons.venus, size: 60),
                          const SizedBox(height: 10),
                          Text(
                            'FEMALE',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.grey,
                            ),
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
                          '180',
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
                        thumbColor: Color(0xFFEB1555),
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 16,
                        ),
                        overlayColor: Color(0x26EB1555),
                      ),
                      child: Slider(
                        min: 10,
                        max: 300,
                        value: 180,
                        onChanged: (value) {
                          print(value);
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
                            'HEIGHT',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.grey,
                            ),
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
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.grey,
                            ),
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
            MaterialButton(
              onPressed: () {},
              child: Text(
                'Calculate'.toUpperCase(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              color: Color(0xFFEB1555),
              minWidth: double.infinity,
              height: 56,
            ),
          ],
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    Key? key,
    this.child,
  }) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF1D1E33),
      ),
      child: child,
    );
  }
}
