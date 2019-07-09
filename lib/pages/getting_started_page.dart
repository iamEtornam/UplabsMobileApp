import 'package:flutter/material.dart';
import 'package:uplabs_app/pages/login_page.dart';

class GettingStartedPage extends StatelessWidget {
  const GettingStartedPage({
    Key key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: SafeArea(
        child: AnimatedContainer(
          padding: const EdgeInsets.all(20),
            duration: Duration(milliseconds: 8000),
            curve: Curves.easeInOut,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: < Widget > [
                Center(child: Image.asset(
                  'assets/images/uplabs_logo.png',
                  height: 100,
                  width: MediaQuery.of(context).size.width / 2, )),
                SizedBox(height: 60),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: < Widget > [
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
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
                        width: MediaQuery.of(context).size.width / 2,
                        child: Text('Place to find high quality designs.',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 16
                          ), ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 5),

              ],
            ),
        ),
      ),

      bottomNavigationBar: MaterialButton(
        color: Colors.blue,
        height: 70,
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LoginPage()));
        },
        child: Text('Get Started!', style: TextStyle(color: Colors.white), ),
      ),
    );
  }

}