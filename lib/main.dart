import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ super.key });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Flutter Logo Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.green,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //  Text( 'image' ),
              Container(
                //  This is where the magic happens... the this container
                //  sets the logo to be half the image height
                //  color: Colors.blue,
                height: (MediaQuery.of(context).size.height)/3,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/flu_logo.png"),
                      //  I used BoxFit.fitHeight so that the height of the Container,
                      //  driven by a MediaQuery, determines the height of the image
                      fit: BoxFit.fitHeight),
                ),                
              ),  
              Padding(
                padding: const EdgeInsets.fromLTRB(0,20,0,0),
                child: Text( 'some text' ),
              ),
            ],
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
