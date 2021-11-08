import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'MARVEL APP';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.blueGrey
      ),
      home: Scaffold(

        body: Stack(
          children:<Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0,0.0,20,0),
              child: Image.asset('img/marvel.png'),),
            const SizedBox(
              width: 800.0,
              height: 300.0,
              child: Padding(
                padding: EdgeInsets.fromLTRB(80.0,110.0,0,0),
                child: Text("Choose your hero",style: TextStyle(color: Colors.white, fontSize: 30.0),),),
            ),
            Padding(

              padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),

              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        color: Colors.black,
                        child: Image.asset(
                          'img/knull.jpg',
                          width: 400,
                          height: 800.0,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(5, 200.0, 20, 0),
                        child: Text(
                          "Knull",
                          style: TextStyle(color: Colors.white, fontSize: 60.0),
                        ),
                      ),
                    ],
                  ), //knull

                  Stack(
                    children: <Widget>[
                      Container(
                        color: Colors.black,
                        child: Image.asset(
                          'img/gwen-spider.jpg',
                          width: 400,
                          height: 800.0,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(5, 250.0, 20, 0),
                        child: Text(
                          "Spider-Gwen",
                          style: TextStyle(color: Colors.white, fontSize: 50.0),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        color: Colors.black,
                        child: Image.asset(
                          'img/scarlet-spider.jpg',
                          width: 400,
                          height: 800.0,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(5, 250.0, 20, 0),
                        child: Text(
                          "Scarlet-spider",
                          style: TextStyle(color: Colors.white, fontSize: 50.0),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        color: Colors.black,
                        child: Image.asset(
                          'img/magik.jpg',
                          width: 400,
                          height: 800.0,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(10, 250.0, 20, 0),
                        child: Text(
                          "Magik",
                          style: TextStyle(color: Colors.white, fontSize: 50.0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
