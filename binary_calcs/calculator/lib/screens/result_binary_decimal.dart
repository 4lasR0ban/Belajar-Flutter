import 'package:calculator/components/custom_card.dart';
import 'package:calculator/components/custom_card2.dart';
import 'package:calculator/constant.dart';
import 'package:calculator/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:calculator/components/bottom_button.dart';

class BinaryDecimalResultPage extends StatelessWidget {
  // const BinaryDecimalResultPage({Key? key}) : super(key: key);

  const BinaryDecimalResultPage({required this.masukanBinaryDecimal});

  final int masukanBinaryDecimal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              alignment: Alignment.center,
              child: const Text(
                'Result',
                style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: CustomCard2(
              color: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    masukanBinaryDecimal.toString(),
                    style: resultTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'HOME',
            onTap: ((() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(                   
                  ),
                ),
              );
            })),
          ),
        ],
      ),
    );
  }
}
