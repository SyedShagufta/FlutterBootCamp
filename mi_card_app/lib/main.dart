import 'package:flutter/material.dart';

void main() {
  runApp(
      const MyApp()
  );
}

class  MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
       body: SafeArea(
           child: Center(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 const CircleAvatar(
                    radius: 50.0,
                   backgroundColor: Colors.white,
                   backgroundImage: AssetImage("images/sha-img.jpg"),
                    ),
                 const Text(
                   'Shagufta Noval',
                   style: TextStyle(
                     fontFamily: 'Pacifico',
                     fontSize: 30.0,
                     fontWeight: FontWeight.bold,
                     color: Colors.white,
                   ),
                 ),
                const Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    fontFamily: 'SourceSans3',
                    fontSize: 15.0,
                    letterSpacing: 5,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                 SizedBox(
                   height: 20.0,
                     width: 150.0,
                     child: Divider(
                       color: Colors.teal.shade100,
                     ),
                 ),
                 Card(
                   margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                   child:  ListTile(
                     leading: Icon(
                       Icons.phone,
                       size: 20.0,
                       color: Colors.teal.shade900,
                     ),
                     title: Text(
                       '+91 8523841676',
                       style: TextStyle(
                         color: Colors.teal.shade900,
                         fontFamily: 'SourceSans3',
                         fontSize: 20.0,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                   ),

                 ),
                 Card(
                   margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                   child:  ListTile(
                     leading: Icon(
                       Icons.mail,
                       size: 20.0,
                       color: Colors.teal.shade900,
                     ),
                     title: Text(
                       'syedshagufta@gmail.com',
                       style: TextStyle(
                         color: Colors.teal.shade900,
                         fontFamily: 'SourceSans3',
                         fontSize: 20.0,
                         fontWeight: FontWeight.bold,
                       ),
                     ) ,
                   ),

                 )
               ],
             ),
           ),
       ),
    ),
    );
  }
}


