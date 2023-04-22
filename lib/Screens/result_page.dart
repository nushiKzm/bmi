import 'package:bmi_calculator/Components/bottom_button.dart';
import 'package:bmi_calculator/Components/reusable_container.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String resultText;
  final String bmi;
  final String advise;
  final Color textColor;

  ResultPage(
      {required this.textColor,
      required this.resultText,
      required this.bmi,
      required this.advise});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.sort,
          size: 35,
        ),
        leadingWidth: 70,
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              color: kcloseToBlackColor,
              margin: const EdgeInsets.only(top: 12),
              padding: const EdgeInsets.all(22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Your Result',
                    style: ktitleTextStyle,
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: ReusableContainer(
                      cardChild: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              resultText,
                              style: TextStyle(
                                color: textColor,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              bmi,
                              style: kBMITextStyle,
                            ),
                            const Text(
                              'Normal BMI range:',
                              style: klabelTextStyle,
                            ),
                            const Text(
                              '18.5 - 25 kg/m2',
                              style: kBodyTextStyle,
                            ),
                            Text(
                              advise,
                              textAlign: TextAlign.center,
                              style: kBodyTextStyle,
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            RawMaterialButton(
                              onPressed: () {},
                              constraints: const BoxConstraints.tightFor(
                                width: 200.0,
                                height: 56.0,
                              ),
                              fillColor: Color.fromARGB(255, 24, 28, 45),
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0)),
                              child: const Text(
                                'SAVE RESULT',
                                style: kBodyTextStyle,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              text: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
