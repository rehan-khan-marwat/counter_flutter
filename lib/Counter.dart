import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter', style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text(
                'Result: $result',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.purple,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        result++;
                      });
                    },
                    icon: Icon(Icons.add),
                    iconSize: 30,
                    color: Colors.green,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if (result > 0) {
                          result--;
                        }
                      });
                    },
                    icon: Icon(Icons.remove),
                    iconSize: 30,
                    color: Colors.red,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        result = 0;
                      });
                    },
                    icon: Icon(Icons.refresh),
                    iconSize: 30,
                    color: Colors.blue,
                  ),
                ],
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text('REHAN KHAN', style: TextStyle(fontSize: 30, color: Colors.black,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
