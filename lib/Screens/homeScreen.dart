import 'package:flutter/material.dart';
import 'package:yelpp/Screens/Activities/activitiesScreens.dart';
import 'package:yelpp/Screens/Collections/collectionsScreen.dart';
import 'package:yelpp/Screens/Me/meScreens.dart';
import 'package:yelpp/Screens/More/moreScreen.dart';

import 'Search/searchScreen.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 int _selectedIndex = 0;

  List<Widget> _widgets = [
    SearchScreen(),
    MeScreens(),
    ActivitiesScreen(),
    CollectionsScreens(),
    MoreScreen()


  ];




  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                pinned: true,
                backgroundColor: Color(0xffc62828),
                floating: false,
                expandedHeight: MediaQuery.of(context).size.height*0.4,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset('images/meal.jpg',fit: BoxFit.cover,),
                  centerTitle: true,
                  title: SizedBox(
                    width: MediaQuery.of(context).size.width*0.6,
                    height: MediaQuery.of(context).size.height*0.04,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          color: Colors.white,
                          ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                              keyboardType: TextInputType.text,
                              style: TextStyle(color: Colors.black),
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'search for nearby restrants and coffe shops',
                                  hintStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black38),
                                  icon: Icon(
                                    Icons.search,
                                    size: 16,
                                    color: Colors.black38,
                                  ),
                                  
                                  ),
                              textInputAction: TextInputAction.next ,
                              
                              
                            ),
                      ),
                    ),
                  ),
              ),
              ),
              SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return  SizedBox(
          height:200,
          width:300,
          child: Center(child: Text('heyyyyy')),
        );
            },
            childCount: 9,
          ),
        ),
        

            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items:  <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text('Search'),
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('images/icon-360.png')),
                title: Text('Me'),
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('images/icon-3600.png')),
                title: Text('Activities'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_border),
                title: Text('Collections'),
                activeIcon: Icon(Icons.bookmark),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                title: Text('More'),
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            type: BottomNavigationBarType.fixed,
            selectedIconTheme: IconThemeData(color: Color(0xffc62828) ,size: 25 ),
            unselectedIconTheme: IconThemeData(color: Colors.black45, size: 25),
            selectedItemColor: Color(0xffc62828),
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),

          ),

      
    );
  }
}