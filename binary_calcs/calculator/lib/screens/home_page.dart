import 'package:flutter/material.dart';
import 'package:calculator/components/custom_card.dart';
import 'package:calculator/components/bottom_button.dart';
import 'package:calculator/calculator.dart';
import 'package:calculator/screens/binary_decimal_page.dart';
import 'package:calculator/screens/decimal_binary_page.dart';
import 'package:calculator/components/custom_card2.dart';
import 'package:calculator/constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: CustomCard2(
              color: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Binary Converter',
                    style: resultTextStyle,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(
                    color: Colors.white,
                    cardChild: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(5),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size.fromHeight(80),
                          textStyle: TextStyle(fontSize: 16),
                          primary: Colors.indigo,
                        ),
                        child: Text('Decimal to Binary'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DecimalBinary()));
                        },
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    color: Colors.white,
                    cardChild: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(5),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size.fromHeight(80),
                          textStyle: TextStyle(fontSize: 16),
                          primary: Colors.indigo,
                        ),
                        child: Text('Binary to Decimal'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BinaryDecimal()));
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
