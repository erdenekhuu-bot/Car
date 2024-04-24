import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset(
            'images/Group66.png',
            width: 35,
            height: 35,
          ),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Дугаар баталгаажуулах',
                style: TextStyle(
                    color: Color(0xff404040),
                    fontFamily: 'Inter',
                    fontSize: 20),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              '${80425077} дугаарт ${4} оронтой код илгээлээ',
              style: TextStyle(color: Color(0xff404040), fontSize: 13),
            ),
          ),
          Container(
              width: 58,
              height: 58,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    decoration: InputDecoration(
                        labelText: '',
                        border: OutlineInputBorder(),
                        counterText: ''),
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                  ),
                ],
              )),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 313,
            height: 40,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Үргэлжлүүлэх',
                style: TextStyle(color: Colors.white, fontFamily: 'Inter'),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff404040),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          )
        ],
      ),
    );
  }
}
