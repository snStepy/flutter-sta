import 'package:flutter/material.dart';
void main() => runApp(new App());


class App extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      // implement build
      return Center(
        child: Container(
          height: 40.0, 
          width: 40.0, 
          color: Colors.red[300], 
          margin: const EdgeInsets.all(10.0)
        ),
      );
    }
  
}
// void main(List<String> args) {
//   runApp(Center(
//     child: Container(height: 40.0, width: 40.0, color: Colors.red, margin: const EdgeInsets.all(20.0)),
//   ));
// }
