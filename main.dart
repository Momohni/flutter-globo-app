import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var text = 'No one Clicked';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: FloatingActionButton.extended(icon:Icon(Icons.add) & label: Text('add'))
      floatingActionButton: FloatingActionButton(
        splashColor: Colors.black,
        // mini: true,  to use a smaller FAB
        foregroundColor: Colors.red,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(100.0))),
        backgroundColor: Colors.yellow,
        elevation: 30,
        child: Icon(
          Icons.add,
          // color: Colors.blue,
        ),
        onPressed: () {
          setState(() {
            text = 'FAB clicked';
          });
        },
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$text'),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 30, primary: Colors.red, onPrimary: Colors.amber),
              onPressed: () {
                setState(() {
                  text = 'Elevated Button was clicked';
                });
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [Text('Save'), SizedBox(width: 10), Icon(Icons.save)],
              )),
          SizedBox(
            height: 20,
          ),
          TextButton(
            style: TextButton.styleFrom(
                elevation: 30,
                primary: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(13)))),
            onPressed: () {
              setState(() {
                text = 'TextButton was Clicked';
              });
            },
            child: Text('OK'),
          ),
          SizedBox(height: 20),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: (){
                setState(() {
                  text= 'NO was clicked';
                });
              },
              child: Text('No')),
              ElevatedButton(onPressed: (){
                setState(() {
                  text= 'YES was clicked';
                });
              },
              child: Text('YES')),
            ],
          ),
          MaterialButton(
            // shape: RoundedRectangleBorder(
            //   side: BorderSide(
            //     color: Colors.black,
            //     width: 1,),
            //   borderRadius: BorderRadius.all(Radius.circular(20)) ),
            onPressed: (){
            setState(() {
              text= 'Material Button was clicked';
            });
          },
            child: Text('Enter'),)
        ],
      )),
    );
  }
}
