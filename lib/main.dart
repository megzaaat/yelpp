import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yelpp/Providers/Auth.dart';
import 'package:yelpp/Screens/Collections/collectionsScreen.dart';
import 'package:yelpp/Screens/Me/meScreens.dart';
import 'Providers/itemData.dart';
import 'Screens/Activities/activitiesScreens.dart';
import 'Screens/More/moreScreen.dart';
import 'Screens/Search/searchScreen.dart';
import 'Screens/homeScreen.dart';

void main() => runApp(MyApp ());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      child: Consumer<Auth>(
        builder: (ctx, auth, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            accentColor: Colors.white,
            cardTheme: CardTheme(
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 20),
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
            ),
            appBarTheme: AppBarTheme(
              textTheme: TextTheme(
                  title: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 19)),
              color: Colors.black.withOpacity(0.1),
              iconTheme: IconThemeData(
                color: Colors.blue,
              ),
            ),
            textTheme: ThemeData.light().textTheme.copyWith(
                display1: TextStyle(
                    fontSize: 19,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
                display2: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
                display3: TextStyle(
                    fontSize: 18,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
                body2: TextStyle(
                    fontSize: 19,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
                body1: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                title: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold)),
          ),
          home: HomeScreen(),
          routes: <String, WidgetBuilder>{
            'SearchSearch': (BuildContext context) => SearchScreen(),
            'Me': (BuildContext context) => MeScreens(),
            'Activities': (BuildContext context) => ActivitiesScreen(),
            'Collections': (BuildContext context) => CollectionsScreens(),
            'More': (BuildContext context) => MoreScreen(),
          },
        ),
      ), providers: [
        ChangeNotifierProvider.value(
          value: Auth(),
        ),
        ChangeNotifierProvider.value(
          value: ItemsDataProvider())
      ],
      
    );
  }
} 

