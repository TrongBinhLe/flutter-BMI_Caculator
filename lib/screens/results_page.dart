import 'package:bmi_calculator/caculator_brain.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:flutter/material.dart';
import '../contants.dart';

class ResultsPage extends StatelessWidget {
  static final String routeName = '/results_page';
  final String bmiResult;
  final String resultText;
  final String interpretationText;
  
  ResultsPage({@required this.bmiResult, @required this.resultText, @required this.interpretationText});


  @override
  Widget build(BuildContext context) {
  // final agr = ModalRoute.of(context).settings.arguments as CaculatorBrain;
  
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CACULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretationText,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
              onPress: null,
            ),
          ),
          BottomButton(
            title: 'RE_CACULATE',
            onPress: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
