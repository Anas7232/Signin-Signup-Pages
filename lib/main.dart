import 'package:flutter/material.dart';
import 'package:signinform/second.dart';

void main() {
  runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1F1F39),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 15),
            child: ListTile(
                trailing: Text('Skip', style: TextStyle(fontSize: 15, color: Colors.white),)
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Center(child: Image(image: AssetImage('assets/first.png'), width: 280,)),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 2,top: 10),
            child: Center(child: Text('Numarious Free', style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.bold),)),
          ),
          const Center(child: Text('Trail Courses', style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold))),

          const Padding(
            padding: EdgeInsets.only(top:20),
            child: Center(child: Text('Free courses for you to ', style: TextStyle(color: Colors.white,fontSize: 15))),
          ),
          const Center(child: Text('find your way to learning', style: TextStyle(color: Colors.white,fontSize: 15))),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: ListTile(
              trailing: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
                  },
                  child: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.white,)),
            ),
          ),
        ],
      ),
    );
  }
}

