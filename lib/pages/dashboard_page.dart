import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({
    Key key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: AnimatedContainer(
        duration: Duration(milliseconds: 8000),
        curve: Curves.easeInOut,
        child: Column(
          children: < Widget > [
            Container(
              color: Colors.white,
              height: 200,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              margin: const EdgeInsets.all(15),
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8)
              ),
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                      Text('Badges',
                      style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),),
                             Row(
                               children: <Widget>[
                                 Text('View All',
                                 
                      style: TextStyle(fontWeight: FontWeight.w100,fontSize: 16,),),
                      Icon(Icons.arrow_right)
                               ],
                             )
                    ],),
                  ),
                  Container(
                    child: ListView(children: <Widget>[
                      CircleAvatar(),
                      Text('text here')
                    ],),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}