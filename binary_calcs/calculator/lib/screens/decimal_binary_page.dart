import 'package:flutter/material.dart';
import 'package:calculator/components/custom_card.dart';
import 'package:calculator/components/bottom_button.dart';
import 'package:calculator/calculator.dart';
import 'package:calculator/screens/result_decimal_binary.dart';


class DecimalBinary extends StatefulWidget {
  const DecimalBinary({Key? key}) : super(key: key);

  @override
  State<DecimalBinary> createState() => _DecimalBinaryState();
}

class _DecimalBinaryState extends State<DecimalBinary> {
  final _textController = TextEditingController();

  String decimalInput = '';

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
              child: Text('Convert Decimal to Binary',
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
                      labelText: 'Masukan Angka',
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
              print(decimalInput);
              decimalInput=_textController.text;
              Calculator cal = Calculator(masukan: decimalInput);

              int masukanDecimalBinary = cal.calculateDecimalBinary();
              print(masukanDecimalBinary);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DecimalBinaryResultPage(
                    masukanDecimalBinary: masukanDecimalBinary,
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
