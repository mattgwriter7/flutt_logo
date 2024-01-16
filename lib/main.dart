import 'package:flutter/material.dart';

//  This code is literally from the "flutter create" boilerplate,
//  but I removed the counter app (and kept the underlying structure).

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
        //  set underlying Container to take up the entire screen
        //  ( only width needed for this, cuz the child Column will push height... ) 
          color: Colors.green,
          width: double.infinity,
          child: Column(
            //  Columns can have the content centered like so:
            //  ( Think of a Column like a totem pole, stacking widgets vertically )
            mainAxisAlignment: MainAxisAlignment.center,    //  "main" axis is vertical for a Column
            crossAxisAlignment: CrossAxisAlignment.center,  //  "cross" axis is horizontal for a Column
            children: [
              //  Text( 'image' ),
              Container(
                //  This is where the magic happens... this Container
                //  forces the logo image to be ⅓ the screen height
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
              //  This padding is to vertically space the text from the image
              //  above. (I like to use EdgeInsets.fromLTRB for max control, Son!)
              //  Note: You may want to add Padding to image, too (especially
              //        if you use MainAxisAlignment.start...)              
              Padding(
                padding: const EdgeInsets.fromLTRB(0,20,0,0),
                child: Text( 'some text!' ),
              ),
            ],
          ),
        ),  
      ),
    );
  }
}
