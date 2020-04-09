 
import 'package:flutter/material.dart';


class BottomNavogatio extends StatefulWidget {
  @override
  _BottomNavogatioState createState() => _BottomNavogatioState();
}

class _BottomNavogatioState extends State<BottomNavogatio> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(icon:  Icon( Icons.code),
          color: Colors.black,
          iconSize: 28,
           onPressed: (){
             Navigator.of(context).pop();
           })
        ],
        backgroundColor: Colors.white,
        title: const Text('BottomNavigationBar',
        style: TextStyle(color: Colors.black),),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('School'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}


// class MyHome extends StatefulWidget {
//   @override
//   MyHomeState createState() => MyHomeState();
// }

// // SingleTickerProviderStateMixin is used for animation
// class MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
//   // Create a tab controller
//   TabController controller;

//   @override
//   void initState() {
//     super.initState();

//     // Initialize the Tab Controller
//     controller = TabController(length: 3, vsync: this);
//   }

//   @override
//   void dispose() {
//     // Dispose of the Tab Controller
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // Appbar
//       appBar: AppBar(
//         // Title
//         title: Text("Using Bottom Navigation Bar"),
//         // Set the background color of the App Bar
//         backgroundColor: Colors.blue,
//       ),
//       // Set the TabBar view as the body of the Scaffold
//       body: TabBarView(
//         // Add tabs as widgets
//         children: <Widget>[FirstTab(), SecondTab(), ThirdTab()],
//         // set the controller
//         controller: controller,
//       ),
//       // Set the bottom navigation bar
//       bottomNavigationBar: Material(
//         // set the color of the bottom navigation bar
//         color: Colors.blue,
//         // set the tab bar as the child of bottom navigation bar
//         child: TabBar(
//           tabs: <Tab>[
//             Tab(
//               // set icon to the tab
//               icon: Icon(Icons.favorite),
//             ),
//             Tab(
//               icon: Icon(Icons.adb),
//             ),
//             Tab(
//               icon: Icon(Icons.airport_shuttle),
//             ),
//           ],
//           // setup the controller
//           controller: controller,
//         ),
//       ),
//     );
//   }
// }