import 'package:flutter/material.dart';
import 'package:signinform/firstpage.dart';
import 'package:signinform/secondpage.dart';

void main() {
  runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectIndex = 0;
  void _Navigationbar(int index){
    setState(() {
      _selectIndex = index;
    });
  }

  List<Widget> screen = [
    FirstPage(),
    Home_SecondPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F1F39),
      body: screen[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF1F1F39),
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.white30,
        currentIndex: _selectIndex,
        onTap: _Navigationbar,
        items: [
          BottomNavigationBarItem(icon: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Icon(Icons.home_outlined,size: 27,),
          ),label: '',),
          BottomNavigationBarItem(icon: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Icon(Icons.grid_view_outlined,size: 27),
          ),label: '',),
          BottomNavigationBarItem(icon: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Icon(Icons.shopping_bag_outlined,size: 27),
          ),label: '',),
          BottomNavigationBarItem(icon: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Icon(Icons.search_outlined,size: 27),
          ),label: '',)
        ],
      ),

    );
  }
}
