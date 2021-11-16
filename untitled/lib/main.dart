import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyStatelessWidget(),
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
              padding: const EdgeInsets.fromLTRB(20,0,20,0),
              child: Image.asset('img/marvel.png')),
            const SizedBox(
              width: 800,
              height: 300,

              child: Padding(
                padding: EdgeInsets.fromLTRB(80,110,0,0),
                child: Text("Choose your hero",style: TextStyle(color: Colors.white, fontSize: 30),),),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),

              child: PageView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.asset(
                        'img/knull.jpg',

                        fit: BoxFit.fill,
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(5, 200, 20, 0),
                        child: Text(
                          "Knull",
                          style: TextStyle(color: Colors.white, fontSize: 60),
                        ),
                      ),
                    ],
                  ), //knull

                  Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.asset(
                        'img/gwen-spider.jpg',
                        fit: BoxFit.fill,
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(5, 250, 20, 0),
                        child: Text(
                          "Spider-Gwen",
                          style: TextStyle(color: Colors.white, fontSize: 50),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.asset(
                        'img/scarlet-spider.jpg',
                        fit: BoxFit.fill,
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(5, 250, 20, 0),
                        child: Text(
                          "Scarlet-spider",
                          style: TextStyle(color: Colors.white, fontSize: 50),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.asset(
                        'img/magik.jpg',
                          fit: BoxFit.fill,
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(10, 250, 20, 0),
                        child: Text(
                          "Magik",
                          style: TextStyle(color: Colors.white, fontSize: 50),
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
