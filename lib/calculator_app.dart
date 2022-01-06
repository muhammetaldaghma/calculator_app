import 'dart:math';

import 'package:calculator_app/calculatorhesaplama.dart';
import 'package:flutter/material.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  bool isErkek = true;
  double height = 120.0;

  int wight  = 40;
  int aga = 20;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(()
                        {
                          isErkek= true;
                        });
                      },
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('images/erkek.png'),
                                  height: 90.0,
                                  width: 90.0,
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Text(
                                  'Erkek',
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: isErkek ? Colors.blue : Colors.black12,
                            ),
                            ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              isErkek = false;
                            });
                          },
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('images/kadın.png'),
                                  height: 90.0,
                                  width: 90.0,
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Text(
                                  'Kadın',
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: !isErkek ? Colors.blue : Colors.black12,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Boy',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'CM',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: height,
                      max: 220.0,
                      min: 80.0,
                      onChanged: (value){
                        setState(() {
                          height = value;
                        });
                      },
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.black12,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Ağırlık',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '$wight',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center ,
                            children: [
                              FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      wight--;
                                    });
                                  },
                                heroTag: 'wight+',
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                  ),
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    wight++;
                                  });
                                },
                                heroTag: 'wight-',
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.black12,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Yaş',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '$aga',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    aga--;
                                  });
                                },
                                heroTag: 'age-',
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    aga++;
                                  });
                                },
                                heroTag: 'age+',
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.black12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.blue,
            child: MaterialButton(
              onPressed: () {
                double result = wight / pow(height / 100, 2);
                print(result.round());

                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => calculatorHesaplama(
                        age: aga,
                        isMale: isErkek,
                        result: result.round(),
                      ),
                    ),
                );
              },
              height: 50.0,
              child: Text(
                'Hesapla',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
             ),
          ),
        ],
      ),
    );
  }
}
