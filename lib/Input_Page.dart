import 'package:bmi_calculator/ConstantFile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/IconTextFile.dart';
import 'package:bmi_calculator/ContainerFile.dart';
import 'ConstantFile.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: RepeatContainerCode(
                  onPressed: () {
                    setState(() {
                      selectGender = Gender.male;
                    });
                  },
                  colors:
                      selectGender == Gender.male ? activeColor : deActiveColor,
                  cardWidget: RepeatTextAndIconWidget(
                    iconData: FontAwesomeIcons.male,
                    label: 'Male',
                  ),
                ),
              ),
              Expanded(
                child: RepeatContainerCode(
                  onPressed: () {
                    setState(() {
                      selectGender = Gender.female;
                    });
                  },
                  colors: selectGender == Gender.female
                      ? activeColor
                      : deActiveColor,
                  cardWidget: RepeatTextAndIconWidget(
                    iconData: FontAwesomeIcons.female,
                    label: 'Female',
                  ),
                ),
              )
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: RepeatContainerCode(
                colors: Color(0xFF1D1E33),
                cardWidget: Column(
                  children: [
                    Text(
                      'HEIGHT',
                      style: kLableStyle,
                    )
                  ],
                ),
              )),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: RepeatContainerCode(
                colors: Color(0xFF1D1E33),
              )),
              Expanded(
                  child: RepeatContainerCode(
                colors: Color(0xFF1D1E33),
              ))
            ],
          )),
        ],
      ),
    );
  }
}
