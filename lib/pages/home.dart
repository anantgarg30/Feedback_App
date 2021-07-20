import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import './feed.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.limeAccent,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Feedback App'),
        centerTitle: true,
        elevation: 0.0,
      ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Please give your valuable feedback',
              style: TextStyle(
                fontSize: 28.0,
                color: Colors.deepOrangeAccent,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Feed(totalRating: 0, index: 0,),
                        ));
                  },
                  child: Text(
                      'Click here to give your feedback',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                      textAlign: TextAlign.center,
                  )
              ),
            ),
            SizedBox(height: 50.0),
            SpinKitPulse (
              color: Colors.black,
              size: 50.0,
            ),
          ],
        ),
      );
  }
}