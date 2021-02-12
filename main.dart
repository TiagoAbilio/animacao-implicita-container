import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    )
  );
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool _creser = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  _creser = !_creser;
                });
              },
              child: AnimatedContainer(
                width: _creser ? 50 : 500,
                child: Image.network('http://1.bp.blogspot.com/-KV_BZWu0QNs/Uj-7khFA8gI/AAAAAAAAYXI/cdWyPwBNgG0/s1600/Cora%C3%A7%C3%A3o-em-png-queroiamgem-Cei%C3%A7a-Crispim+(1).png'),
                duration: Duration(seconds: 1),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [Colors.purple, Colors.white, Colors.red,Colors.white,Colors.red,Colors.white,Colors.red],
                  )
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
