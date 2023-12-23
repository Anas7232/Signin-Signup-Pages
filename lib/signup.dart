import 'package:flutter/material.dart';
import 'package:signinform/signin.dart';
import 'package:signinform/third.dart';

void main() {
  runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SignupPage(),
      ));
}

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  bool? isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1F1F39),
      body: SingleChildScrollView(
        child: Column(
        
          children: [



           Row(
             children: [
               const Padding(
                 padding: EdgeInsets.only(top: 50, left: 40,bottom: 20),
                 child: Text('Sign Up',style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),),
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 40,left: 190),
                 child: GestureDetector(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>const ThirdPage()));
                     },
                     child: const Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white30,)),
               ),
             ],
           ),
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF2F2F42),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(13),
                  topRight: Radius.circular(13)
                )
              ),
              width: MediaQuery.of(context).size.width/1,
              height: MediaQuery.of(context).size.height/1.19,
              // color: Color(0xFF2F2F42),

              child: Column(
                children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width/1.2,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: SizedBox(
                          child: TextField(
                            style: const TextStyle(color: Colors.white70),
                            obscureText: false,
                            decoration: InputDecoration(
                              filled: true,
                                fillColor: const Color(0xFF3E3E55),
                                labelStyle: const TextStyle(color: Colors.white30,fontWeight: FontWeight.w400),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                labelText: 'Full Name'
                            ),
                          ),
                        ),
                      ),
                    ),



                  SizedBox(
                    width: MediaQuery.of(context).size.width/1.2,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: SizedBox(
                        child: TextField(
                          style: const TextStyle(color: Colors.white70),
                          obscureText: false,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xFF3E3E55),
                              labelStyle: const TextStyle(color: Colors.white30,fontWeight: FontWeight.w400),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              labelText: 'Email'
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    width: MediaQuery.of(context).size.width/1.2,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: SizedBox(
                        child: TextField(
                          style: const TextStyle(color: Colors.white70),
                          obscureText: true,
                          obscuringCharacter: "*",
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xFF3E3E55),
                            labelStyle: const TextStyle(color: Colors.white30,fontWeight: FontWeight.w400),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              labelText: 'Password'
                          ),
                        ),
                      ),
                    ),
                  ),

                  Container(
                      width: MediaQuery.of(context).size.width/1.2,
                    margin: const EdgeInsets.only(top: 20),
                    child: const Card(
                      color: Color(0xFF3D5CFF),
                      child: Padding(
                        padding: EdgeInsets.only(top: 16,bottom: 16),
                        child: Center(child: Text('Create account',style: TextStyle(color: Colors.white,fontSize: 18),)),
                      ),
                    )
                  ),

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 35,top: 20),
                        child: Checkbox(
                          isError: false,
                          tristate: true,
                          value: isChecked,
                          onChanged: (bool? value){
                            setState(() {
                              isChecked = value;
                            });
                          },
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20,left: 15),
                        child: Text('Agree with Out Them & conditions',style: TextStyle(color: Colors.white30),),
                      )
                    ],
                  ),

                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 75,top: 20),
                        child: Text('Allready have an account ?',
                        style: TextStyle(color: Colors.white30),
                        )
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 5),
                        child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const SigninPage()));
                            },
                            child: const Text('Login',style: TextStyle(color: Color(0xFF3D5CFF),fontWeight: FontWeight.bold),)),
                      )
                    ],
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
