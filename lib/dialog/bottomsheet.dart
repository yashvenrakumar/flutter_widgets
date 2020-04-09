import 'package:flutter/material.dart';


class Bottomsheet extends StatefulWidget {
  @override
  _BottomsheetState createState() => _BottomsheetState();
}

class _BottomsheetState extends State<Bottomsheet> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
       appBar: AppBar( 
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" BottomSheet",style: TextStyle(color: Colors.black),),
         ),
         body: Center(
           child:         Container(
          width: 220,
          height: 50,
         // margin: EdgeInsets.fromLTRB( 0, 150, 0,0),
          child: RaisedButton(
            elevation: 10,
            color: Colors.white,
            child: Text(" Source code here !",style: TextStyle(
          color: Colors.black, fontSize: 20),),

            onPressed:(){
            Navigator.of(context).pop();
          }),
        ),

         ),
      floatingActionButton: new FloatingActionButton(
        onPressed: (){
          _settingModalBottomSheet(context);
        },
        child: new Icon(Icons.add),
      ),
    );
  }
}


void _settingModalBottomSheet(context){
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc){
          return Container(
            child: new Wrap(
            children: <Widget>[
new ListTile(
            leading: new Icon(Icons.music_note),
            title: new Text('Music'),
            onTap: () => {}          
          ),
          new ListTile(
            leading: new Icon(Icons.videocam),
            title: new Text('Video'),
            onTap: () => {},          
          ),
            ],
          ),
          );
      }
    );
}






// Center(
//   child: RaisedButton(
//     child: const Text('SHOW BOTTOM SHEET'),
//     onPressed: () {
//       showModalBottomSheet<void>(context: context, builder: (BuildContext context) {
//         return Container(
//           child: Padding(
//             padding: const EdgeInsets.all(32.0),
//             child: Text('This is the modal bottom sheet. Slide down to dismiss.',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 color: Theme.of(context).accentColor,
//                 fontSize: 24.0,
//               ),
//             ),
//           ),
//         );
//       });
//     },
//   ),
// )