import 'package:flutter/material.dart';
import './home.dart';

class Output extends StatefulWidget {
  final int totalRating;

  const Output({Key? key, required this.totalRating})
      : super(key: key);

  @override
  _OutputState createState() => _OutputState();
}

class _OutputState extends State<Output> {
  String output = "";
  Color? color;

  List<String> messages = [
    'We are sorry for your inconvenience',
    'Hope we serve you better next time',
    'We hope you come back next time',
  ];

  void getMessage() {
    if(widget.totalRating <= 10){
      output = messages[0];
      color = Colors.redAccent;
    }
    else if(widget.totalRating <= 20){
      output = messages[1];
      color = Colors.yellowAccent[400];
    }
    else if(widget.totalRating <= 30){
      output = messages[2];
      color = Colors.green;
    }
    else{
      output = "Invalid Rating";
    }
  }

  @override
  Widget build(BuildContext context) {
    getMessage();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Feedback App'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$output",
              style: TextStyle(
                fontSize: 30.0,
                color: color,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            TextButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                          (Route<dynamic> route) => false);
                },
                child: Text(
                  'Back to Home Screen',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.center,
                )
            )
          ],
        ),
      ),

    );
  }
}
