 


import 'package:flutter/material.dart';

class BasicFractionallySizedBox extends StatelessWidget {
  //A widget that sizes its child to a fraction of the total available space
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      appBar: AppBar(
         backgroundColor: Colors.white,
         title: Text("FractionallySizedBox Widget",style: TextStyle(
        color: Colors.black,
      ),)),
      body: Row(
      children: <Widget>[
      Flexible(
        child: FractionallySizedBox(
            widthFactor: 1,
            child: Container(
              width: 200,
              
              margin: EdgeInsets.only(right: 5),
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(125)),
              ),
            )
        ),
      ),
      Flexible(
        child: FractionallySizedBox(
            widthFactor: 1,
            child: Container(
              margin: EdgeInsets.only(right: 5),
              height:100,

                    width: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(125)),
              ),
            )
        ),
      ),
      Flexible(
        child: FractionallySizedBox(
            widthFactor: 1,
            child: Container(
              margin: EdgeInsets.only(right: 5),
              height: 100,

                    width: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(125)),
              ),
            )
        ),
      ),
      Flexible(
        child: FractionallySizedBox(
            widthFactor: 1,
            child: Container(
              margin: EdgeInsets.only(right: 5),
              height: 100,
                    width: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(125)),
              ),
            )
        ),
      ),
      Flexible(
        child: FractionallySizedBox(
            widthFactor: 1,
            child: Container(
              margin: EdgeInsets.only(right: 5),
              height: 100,
                    width: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(125)),
              ),
            )
        ),
      ),
    ],
),


    );
  }
}