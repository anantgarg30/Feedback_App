import 'package:flutter/material.dart';
import './output.dart';

class Feed extends StatefulWidget {
  final int totalRating;
  final int index;

  const Feed({Key? key, required this.totalRating, required this.index})
      : super(key: key);

  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {

  int rating = 1;

  List<String> questions = [
    'How did you like our Service?',
    'How would you rate our Staff?',
    'How did you like our Presentation?',
    'How would you rate the Quality?',
    'How likely are you to recommend us to your Friends?',
    'How likely are you to come back here?',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Question ${widget.index+1}'),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                questions[widget.index],
                style: TextStyle(
                    fontSize: 22,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 27.50),
            Center(
              child: Slider.adaptive(
                  value: rating.toDouble(),
                  onChanged: (newRating) {
                    setState(() {
                      rating = newRating.toInt();
                    });
                  },
                  min: 1,
                  max: 5,
                  divisions: 4,
                  label: "$rating",
                  activeColor: Colors.orange[rating * 100 + 400],
                  inactiveColor: Colors.yellow[rating * 100 + 300],
              ),
            ),
            SizedBox(height: 15.0),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    if (widget.index == questions.length-1) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Output(totalRating: widget.totalRating + rating,),
                          ));
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Feed(totalRating: widget.totalRating + rating, index: widget.index + 1),
                          ));
                    }
                  },
                  child: Text('Next')),
            )
          ],
        )
    );
  }
}
