import 'package:flutter/material.dart';

class GettingStartedPage extends StatelessWidget {
  const GettingStartedPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AnimatedContainer(
          color: Colors.white70,
          padding: const EdgeInsets.all(16),
          duration: Duration(milliseconds: 8000),
          curve: Curves.easeInOut,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(child: Image.asset('assets/images/uplabs_logo.png')),
          SizedBox(height: 60,),
          Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width/2,
                child: RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: 36,
            color: Colors.black
          ),
          children: [
            TextSpan(
                  text: 'The ',
            ),
            TextSpan(
                text: '#1',
                style: TextStyle(
                  color: Colors.blue
                )
            ),
            TextSpan(
                  text: ' Place For Your Design Resources',
            ),
          ]
        )
      ),
              ),
      Container(
                width: MediaQuery.of(context).size.width/2,
        child: Text('Place to find high quality designs.',
        textAlign: TextAlign.left,
        style: TextStyle(
          color: Colors.black45,
          fontSize: 16
        ),),
      )
            ],
          )
        ],
      ),
        ),
      ),
      bottomNavigationBar: MaterialButton(
        color: Colors.blue,
        height: 70,
        onPressed: (){},
        child: Text('Get Started!',style: TextStyle(color: Colors.white),),
      ),
    );
  }
}