import 'package:flutter/material.dart';
import 'custom_button.dart';

const Kyellowbtn = Color(0xffFD9915);
const Kgreybtn = Color(0xffA4A4A4);
const Kdarkbtn = Color(0xff343434);
const KblackText = Colors.black;
const KwhiteText = Colors.white;

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  double num1 = 0;
  double num2 = 0;
  var res = '';
  var textValue = '0';
  var opr = '';
  calc(btnValue) {
    if (btnValue == 'c') {
      reset();
    } else if (btnValue == '+' ||
        btnValue == '-' ||
        btnValue == 'x' ||
        btnValue == '/') {
      this.opr = btnValue;
      this.num1 = double.tryParse(res);
      res = '';
    } else if (btnValue == '=') {
      this.num2 = double.tryParse(res);
      res = '';
      switch (this.opr) {
        case '+':
          this.res = add();
          setState(() {
            this.textValue = this.res;
          });

          break;
        case '-':
          this.res = sub();
          setState(() {
            this.textValue = this.res;
          });
          break;
        case 'x':
          this.res = mul();
          setState(() {
            this.textValue = this.res;
          });
          break;
        case '/':
          this.res = div();
          setState(() {
            this.textValue = this.res;
          });
          break;
      }
    } else {
      res += btnValue;
      setState(() {
        this.textValue = res;
      });
    }
  }

  reset() {
    setState(() {
      this.textValue = '0';
    });

    this.num1 = 0;
    this.num2 = 0;
    this.res = '';
  }

  add() {
    return (this.num1 + this.num2).toString();
  }

  sub() {
    return (this.num1 - this.num2).toString();
  }

  mul() {
    return (this.num1 * this.num2).toString();
  }

  div() {
    return (this.num1 / this.num2).toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(bottom: 20),
                child: Text(
                  this.textValue,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: CustomButton(
                      onPressed: () {
                        this.calc('c');
                      },
                      value: "c",
                      btnColor: Kgreybtn,
                      txtColor: KblackText,
                    ),
                  ),
                  Container(
                    child: CustomButton(
                      onPressed: () {
                        this.calc('+');
                      },
                      value: "+/-",
                      btnColor: Kgreybtn,
                      txtColor: KblackText,
                    ),
                  ),
                  Container(
                    child: CustomButton(
                      value: "%",
                      btnColor: Kgreybtn,
                      txtColor: KblackText,
                    ),
                  ),
                  Container(
                    child: CustomButton(
                      onPressed: () {
                        this.calc('/');
                      },
                      value: "/",
                      btnColor: Colors.amber,
                      txtColor: KwhiteText,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: CustomButton(
                      onPressed: () {
                        this.calc('7');
                      },
                      value: "7",
                      btnColor: Kgreybtn,
                      txtColor: KblackText,
                    ),
                  ),
                  Container(
                    child: CustomButton(
                      onPressed: () {
                        this.calc('8');
                      },
                      value: "8",
                      btnColor: Kgreybtn,
                      txtColor: KblackText,
                    ),
                  ),
                  Container(
                    child: CustomButton(
                      onPressed: () {
                        this.calc('9');
                      },
                      value: "9",
                      btnColor: Kgreybtn,
                      txtColor: KblackText,
                    ),
                  ),
                  Container(
                    child: CustomButton(
                      onPressed: () {
                        this.calc('x');
                      },
                      value: "x",
                      btnColor: Colors.amber,
                      txtColor: KwhiteText,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: CustomButton(
                      onPressed: () {
                        this.calc('6');
                      },
                      value: "6",
                      btnColor: Kgreybtn,
                      txtColor: KblackText,
                    ),
                  ),
                  Container(
                    child: CustomButton(
                      onPressed: () {
                        this.calc('5');
                      },
                      value: "5",
                      btnColor: Kgreybtn,
                      txtColor: KblackText,
                    ),
                  ),
                  Container(
                    child: CustomButton(
                      onPressed: () {
                        this.calc('4');
                      },
                      value: "4",
                      btnColor: Kgreybtn,
                      txtColor: KblackText,
                    ),
                  ),
                  Container(
                    child: CustomButton(
                      onPressed: () {
                        this.calc('-');
                      },
                      value: "-",
                      btnColor: Colors.amber,
                      txtColor: KwhiteText,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: CustomButton(
                      onPressed: () {
                        this.calc('3');
                      },
                      value: "3",
                      btnColor: Kgreybtn,
                      txtColor: KblackText,
                    ),
                  ),
                  Container(
                    child: CustomButton(
                      onPressed: () {
                        this.calc('2');
                      },
                      value: "2",
                      btnColor: Kgreybtn,
                      txtColor: KblackText,
                    ),
                  ),
                  Container(
                    child: CustomButton(
                      onPressed: () {
                        this.calc('1');
                      },
                      value: "1",
                      btnColor: Kgreybtn,
                      txtColor: KblackText,
                    ),
                  ),
                  Container(
                    child: CustomButton(
                      onPressed: () {
                        this.calc('+');
                      },
                      value: "+",
                      btnColor: Colors.amber,
                      txtColor: KwhiteText,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: CustomButton(
                      onPressed: () {
                        this.calc('0');
                      },
                      shape: 2,
                      value: "0",
                      btnColor: Kgreybtn,
                      txtColor: KblackText,
                    ),
                  ),
                  Container(
                    child: CustomButton(
                      onPressed: () {
                        this.calc('.');
                      },
                      value: ".",
                      btnColor: Kgreybtn,
                      txtColor: KblackText,
                    ),
                  ),
                  Container(
                    child: CustomButton(
                      onPressed: () {
                        this.calc('=');
                      },
                      value: "=",
                      btnColor: Colors.amber,
                      txtColor: KwhiteText,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
