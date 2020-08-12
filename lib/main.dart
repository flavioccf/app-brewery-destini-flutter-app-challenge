import 'package:flutter/material.dart';

import 'story_brain.dart';

void main() => runApp(Destini());

class Destini extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {

  StoryBrain storyBrain = new StoryBrain();
  bool _isButton2Visible = true;

  void buttonVisibility() {
    print(storyBrain.getWStory().choice2Id);
    if (storyBrain.getWStory().choice2Id == null) {
      _isButton2Visible = false;
    } else {
      _isButton2Visible = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.fill,
            ),
          ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    storyBrain.getWStory().storyTitle,
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: FlatButton(
                onPressed: () {
                  //Choice 1 made by user.
                  setState(() {
                    storyBrain.nextStory(storyBrain.getWStory().choice1Id);
                    buttonVisibility();
                  });
                },
                color: Colors.red,
                child: Text(
                  storyBrain.getWStory().choice1,
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                  ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible: _isButton2Visible,
                                  child: FlatButton(
                    onPressed: () {
                      //Choice 2 made by user.
                      setState(() {
                        storyBrain.nextStory(storyBrain.getWStory().choice2Id);
                        buttonVisibility();
                      });
                    },
                    color: Colors.blue,
                    child: Text(
                      storyBrain.getWStory().choice2,
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//TODO: Step 24 - Run the app and try to figure out what code you need to add to this file to make the story change when you press on the choice buttons.

//TODO: Step 29 - Run the app and test it against the Story Outline to make sure you've completed all the steps. The code for the completed app can be found here: https://github.com/londonappbrewery/destini-challenge-completed/
