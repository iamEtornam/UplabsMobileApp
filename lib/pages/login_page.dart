import 'package:flutter/material.dart';
import 'package:uplabs_app/pages/dashboard_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: < Widget > [
                    Text('Login', style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold), ),
                    SizedBox(height: 5, ),

                    Text('welcome to Uplabs', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w100), ),

                    SizedBox(height: 35, ),

                    InkWell(
                      onTap: (){
                         Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => DashboardPage()));
                      },
                      child: siginButton(context, Colors.blue, 'Continue with Facebook', Icons.ac_unit)),
                    SizedBox(height: 15, ),
                    siginButton(context, Colors.blue, 'Continue with Google', Icons.golf_course),
                    SizedBox(height: 15, ),

                    siginButton(context, Colors.blue, 'Continue with Twitter', Icons.border_inner),
                    SizedBox(height: 15, ),


                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 5),

              ],
            ),
        ),
      ),
    );
  }

  Widget siginButton(BuildContext context, MaterialColor color, String s, IconData iconData) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8))
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: < Widget > [
            Icon(iconData, color: color, ),
            SizedBox(width: 10, ),
            Center(child: Container(
              width: MediaQuery.of(context).size.width / 1.5,
              child: Text(s, style: TextStyle(color: color), )))
          ], ),
    );
  }

}