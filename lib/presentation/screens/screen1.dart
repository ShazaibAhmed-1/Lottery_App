import 'package:flutter/material.dart';
import 'dart:math';

class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  var random = Random();
  var x = 0;
  var y = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF5C2FAE3),
      appBar: AppBar(
        title: const Text('Shazaib Lottery App'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              '🎊🎊',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 80,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'Lottery winning \n number is: $y',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 250,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.redAccent,
                width: 2,
              ),
              color: Colors.yellow.shade400,
            ),
            child: x == y
                ? Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Icon(
                        Icons.done_outline_sharp,
                        color: Colors.blue,
                        size: 80,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Congratulations \n Your Number is matched \n $x = $y',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ],
                  )
                : Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Icon(
                        Icons.error,
                        color: Colors.red,
                        size: 80,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Better Luck Next Time \n Your Number is $x \n Try Again',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x = random.nextInt(10);
          y = random.nextInt(10);
          print(x);
          setState(
            () {},
          );
        },
        child: Icon(Icons.refresh_outlined),
      ),
    );
  }
}
