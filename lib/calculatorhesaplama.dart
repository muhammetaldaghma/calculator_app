import 'package:flutter/material.dart';

class calculatorHesaplama extends StatelessWidget
{

  final int result;
  final bool isMale;
  final int age;

  calculatorHesaplama({
  required this.result,
  required this.isMale,
  required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left,
          ),
        ),
        title: Text(
          'BMI SONUÇ',

        ),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Cinsiyet : ${isMale ? 'Erkek' : 'Kadın'}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Sonuç : $result',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Yaş: $age',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
