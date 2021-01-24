import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(ShadowApp());
}


class ShadowApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:  AppBar(
          title: Text('Shadow Timer'),
          centerTitle: true,
        ),

        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: <Widget>[
                Text("Exercice duration"),

                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(2),],
                      ),
                    ),
                    SizedBox(child: Text(":")),
                    SizedBox(
                      width: 100,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(2),]
                      ),
                    ),
                  ],
                ),
                Text("Rest duration"),
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(2),]
                      ),
                    ),
                    SizedBox(child: Text(":")),
                    SizedBox(
                      width: 100,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(2),]
                      ),
                    ),
                  ],
                ),

                Text("Number of rounds"),

                SizedBox(
                  width: 200,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    initialValue: "0",
                    inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],


                  ),
                ),

                FlatButton(
                    onPressed: () {},
                    child: Text('Start !'),
                    color: Colors.blue),
              ]
            ),
          ],
        )

      )
    );
  }
}
