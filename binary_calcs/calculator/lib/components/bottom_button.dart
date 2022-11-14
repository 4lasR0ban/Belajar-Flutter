import 'package:flutter/material.dart'; 
import 'package:calculator/constant.dart';

class BottomButton extends StatelessWidget {
  // const BottomButton({Key? key}) : super(key: key);
  BottomButton({required this.buttonTitle, required this.onTap});

  final String buttonTitle;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 10.0),
        height: bottomContainerHeight,
        color: bottomContainerColor,
        child: Center(
          child: Text(
            buttonTitle,
            style: buttonTextStyle,
          ),
        ),
      ),
    );
  }
}
