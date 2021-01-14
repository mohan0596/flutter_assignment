import 'package:flutter/material.dart';

class LearningPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Title"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.ac_unit),
                onPressed: () => debugPrint("print somthing")),
            IconButton(
                icon: Icon(Icons.ac_unit),
                onPressed: () => debugPrint("print somthing")),
            IconButton(
                icon: Icon(Icons.ac_unit),
                onPressed: () => debugPrint("print somthing"))
          ],
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                child: Text("This is body", style: TextStyle(fontSize: 20)),
                onTap: () => debugPrint("OnTap Clicked"),
                onLongPress: () => debugPrint("long press"),
              ),
              CustomButton()
            ],
          ),
        ));
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Scaffold.of(context).showSnackBar(new SnackBar(
          content: Text('Hello!'),
        ))
      },
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text("I am decorated text"),
      ),
    );
  }
}

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.purple,
        child: Center(
            child: Text(
          "My name is mohanijijiji",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 24),
        )));
  }
}
