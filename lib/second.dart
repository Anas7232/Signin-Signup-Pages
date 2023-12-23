import 'package:flutter/material.dart';
import 'package:signinform/main.dart';
import 'package:signinform/third.dart';

void main() {
  runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SecondPage(),
      ));
}

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
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
              child: Center(child: Image(image: AssetImage('assets/second.png'), width: 280,)),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 2,top: 10),
              child: Center(child: Text('Quick and easy ', style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.bold),)),
            ),
            const Center(child: Text('learning', style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold))),

            const Padding(
              padding: EdgeInsets.only(top:20),
              child: Center(child: Text('Easy and fast learning at ', style: TextStyle(color: Colors.white,fontSize: 15))),
            ),
            const Center(child: Text('any time to help you ', style: TextStyle(color: Colors.white,fontSize: 15))),
            const Center(child: Text('improve various skills', style: TextStyle(color: Colors.white,fontSize: 15))),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: ListTile(
                trailing: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ThirdPage()));
                    },
                    child: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.white,)),
                leading: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                    },
                    child: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white,))
              ),
            ),
          ],
        ),
      );
  }
}
