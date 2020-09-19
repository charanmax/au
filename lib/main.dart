import 'package:flutter/material.dart';
import 'package:web_scraper/web_scraper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              textTheme: TextTheme(
                  headline6: TextStyle(
        fontSize: 20,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
      )))),
      home: AU(),
    );
  }
}

class AU extends StatefulWidget {
  @override
  _AUState createState() => _AUState();
}

class _AUState extends State<AU> {
  bool toggleSwitch = false;
  final PreferredSizeWidget appBar = AppBar(
    title: Text(
      'PROTON',
      textAlign: TextAlign.center,
    ),
    elevation: 15,
    centerTitle: true,
    actions: <Widget>[],
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      drawer: Drawer(),
      body: ListView(children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height -
              MediaQuery.of(context).padding.top -
              appBar.preferredSize.height,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/asfalt-dark.png"),
                  fit: BoxFit.cover)),
//        decoration: BoxDecoration(
////            gradient: LinearGradient(
////          colors: [Colors.blue.withOpacity(0.7), Colors.blue],
////          begin: Alignment.topLeft,
////          end: Alignment.bottomRight,
////        )),
          child: Container(
            margin: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Switch on Auto-Save',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                    Switch.adaptive(
                        value: toggleSwitch,
                        onChanged: (value) {
                          setState(() {
                            toggleSwitch = value;
                          });
                        }),
                  ],
                ),
                Column(
                  children: <Widget>[
//                    Text(
//                      'An Awesome Video Downloader',
//                      style: TextStyle(
//                        fontFamily: 'Pacifico',
//                        fontSize: 30,
//                      ),
//                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Enter Url',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FlatButton(
                      color: Colors.blue,
                      child: Text(
                        'DOWNLOAD',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
