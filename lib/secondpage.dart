import 'package:flutter/material.dart';

void main() {
  runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home_SecondPage(),
      ));
}

class Home_SecondPage extends StatefulWidget {
  const Home_SecondPage({super.key});

  @override
  State<Home_SecondPage> createState() => _Home_SecondPageState();
}

class _Home_SecondPageState extends State<Home_SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F1F39),
      body: SingleChildScrollView(

        child: Column(

          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 40,),
                  child: Text('Hi, Anas',style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:150,top: 20),
                  child: Image(image: AssetImage('assets/pic.png'),width: 40,),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200,bottom: 20),
              child: Text('Lets start learning',
                style: TextStyle(color: Colors.white70),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFF2F2F42),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5)
                  )
              ),
              width: MediaQuery.of(context).size.width/1,
              height: MediaQuery.of(context).size.height/1.19,
              // color: Color(0xFF2F2F42),

              child: Column(
                children: [


                  Text('Second Page')

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
