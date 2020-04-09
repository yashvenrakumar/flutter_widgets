
import 'package:flutter/material.dart';

class Nestedscroll extends StatefulWidget {
  @override
  _NestedscrollState createState() => _NestedscrollState();
}

class _NestedscrollState extends State<Nestedscroll> {
   List<String> _tabs = ['One', 'Two', 'Three'];
  @override
  Widget build(BuildContext context) {
  
     return  Scaffold(
            body: DefaultTabController(
  length: _tabs.length, // This is the number of tabs.
  child: NestedScrollView(
    headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        // These are the slivers that show up in the "outer" scroll view.
        return <Widget>[
          SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            child: SliverAppBar(
               backgroundColor: Colors.white,
              actions: <Widget>[
                IconButton(icon: Icon( Icons.code,size: 40,color: Colors.black,),
                 onPressed: (){
                   Navigator.of(context).pop();
                 })
              ],
              title: const Text('Nestedscrollview', style: TextStyle(
                
                color:Colors.black ),), // This is the title in the app bar.
              pinned: true,
              expandedHeight: 150.0,
              
              forceElevated: innerBoxIsScrolled,
              bottom: TabBar(
                indicatorColor: Colors.black,
                labelColor: Colors.black,
                 tabs: _tabs.map((String name) => Tab(text: name)).toList(),
              ),
            ),
          ),
        ];
    },
    body: TabBarView(
         children: _tabs.map((String name) {
          return SafeArea(
            top: false,
            bottom: false,
            child: Builder(
              
              builder: (BuildContext context) {
                return CustomScrollView(
                   
                  key: PageStorageKey<String>(name),
                  slivers: <Widget>[
                    SliverOverlapInjector(
                       handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                    ),
                    SliverPadding(
                      padding: const EdgeInsets.all(8.0),
                       
                      sliver: SliverFixedExtentList(
                        
                        itemExtent: 48.0,
                        delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                                           return ListTile(
                              title: Text('Item $index',style: TextStyle(
                                color: Colors.black
                              ),),
                            );
                          },
                          childCount: 30,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          );
        }).toList(),
    ),
  ),
),
     );
  }
}