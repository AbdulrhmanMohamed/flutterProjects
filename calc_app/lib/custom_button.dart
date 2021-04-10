import 'dart:ui';
import 'package:flutter/Material.dart';

var padding;

class CustomButton extends StatelessWidget {
  final value, btnColor, txtColor, shape;
  final Function onPressed;
  CustomButton(
      {this.value,
      this.btnColor,
      this.txtColor,
      this.shape = 1,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: this.onPressed,
        child: Text(
          this.value,
          style: TextStyle(
            color: this.txtColor,
            fontSize: 35,
          ),
        ),
        style: TextButton.styleFrom(
          backgroundColor: this.btnColor,
          minimumSize: this.shape == 1 ? Size(80, 20) : Size(180, 20),
        ),
      ),
    );
  }
}
