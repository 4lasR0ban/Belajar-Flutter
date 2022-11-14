import 'package:flutter/material.dart';
import 'package:calculator/components/custom_card.dart';
import 'package:calculator/components/bottom_button.dart';
import 'package:calculator/calculator.dart';
import 'package:calculator/screens/result_binary_decimal.dart';

class BinaryDecimal extends StatefulWidget {
  const BinaryDecimal({Key? key}) : super(key: key);

  @override
  State<BinaryDecimal> createState() => _BinaryDecimalState();
}

class _BinaryDecimalState extends State<BinaryDecimal> {
  final _textController = TextEditingController();

  String binaryInput = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: CustomCard(
            color: Colors.white,
            cardChild: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(5),
              child: Text('Convert Binary to Decimal',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          )),
          Expanded(
            child: CustomCard(
              color: Colors.white,
              cardChild: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(50),
                child: TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Masukan Binary 0 atau 1',
                      suffixIcon: IconButton(
                        onPressed: () {
                          _textController.clear();
                        },
                        icon: Icon(Icons.clear),
                      )),
                ),
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'CALCULATE',
            onTap: ((() {
              String userInput = _textController.text;
              Calculator cal = Calculator(masukan: userInput);

              int masukanBinaryDecimal = cal.calculateBinaryDecimal();

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BinaryDecimalResultPage(
                    masukanBinaryDecimal: masukanBinaryDecimal,
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
