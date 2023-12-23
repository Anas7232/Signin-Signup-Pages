import 'package:flutter/material.dart';
import 'package:signinform/signin.dart';
import 'package:signinform/signup.dart';

void main() {
  runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ThirdPage(),
      ));
}

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
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
            child: Center(child: Image(image: AssetImage('assets/third.png'), width: 280,)),
          ),
           const Padding(
            padding: EdgeInsets.only(bottom: 2,top: 10),
            child: Center(child: Text('Create your own  ', style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.bold),)),
          ),
           const Center(child: Text('study plan', style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold))),

           const Padding(
            padding: EdgeInsets.only(top:20),
            child: Center(child: Text('Study according to the  ', style: TextStyle(color: Colors.white,fontSize: 15))),
          ),
           const Center(child: Text('study plan, make study  ', style: TextStyle(color: Colors.white,fontSize: 15))),
           const Center(child: Text('more motivated', style: TextStyle(color: Colors.white,fontSize: 15))),

          Row(
            children: [
               const SizedBox(width: 60,height: 130,),
              Card(
                color:  const Color(0xFF3D5CFF),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15,bottom: 15, left: 50, right: 50),
                  child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
                      },
                      child:  const Text('Sign up',style: TextStyle(color: Colors.white),)),
                ),
              ),
               Card(
                color: const Color(0xFF858597),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15,bottom: 15, left: 50, right: 50),
                  child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SigninPage()));
                      },
                      child: const Text('Log in', style: TextStyle(color: Colors.white),))
                ),
              )
            ],
          )

        ],
      ),
    );
  }
}
