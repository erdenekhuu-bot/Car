import 'package:flutter/material.dart';
import 'package:country_flags/country_flags.dart';

class SecondPage1 extends StatefulWidget {
  const SecondPage1({super.key});

  @override
  State<SecondPage1> createState() => _SecondPage1State();
}

class _SecondPage1State extends State<SecondPage1> {
  bool _limit = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 242, 242),
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset(
            'images/Group152.png',
            width: 35,
            height: 35,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: <Widget>[
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Нууц үг сэргээх',
                style: TextStyle(
                    color: Color(0xff404040),
                    fontFamily: 'Inter',
                    fontSize: 20),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: const Text(
              'Таны бүртгэлтэй дугаар дээр баталгаажуулах код илгээх болно.',
              style: TextStyle(color: Color(0xff404040), fontSize: 13),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 313,
                height: 40,
                child: TextField(
                  onChanged: (text) {
                    setState(() {
                      if (text.length < 8) {
                        _limit = false;
                      } else {
                        _limit = true;
                      }
                    });
                  },
                  decoration: InputDecoration(
                    labelText: '+976',
                    counterText: '',
                    prefixIcon: Padding(
                      padding: EdgeInsets.fromLTRB(15, 8, 8, 8),
                      child: CountryFlag.fromCountryCode(
                        'MN',
                        width: 30,
                        height: 30,
                        borderRadius: 5,
                      ),
                    ),
                    border: const OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  maxLength: 8,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Container(
            width: 313,
            height: 40,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondPage2()));
              },
              child: const Text(
                'Үргэлжлүүлэх',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: _limit
                      ? const Color(0xff404040)
                      : const Color.fromARGB(255, 141, 141, 141),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
            ),
          ),
        ],
      ),
    );
  }
}

class SecondPage2 extends StatefulWidget {
  const SecondPage2({super.key});

  @override
  State<SecondPage2> createState() => _SecondPage2State();
}

class _SecondPage2State extends State<SecondPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset(
            'images/Group152.png',
            width: 35,
            height: 35,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
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
              '${80425077} дугаарт 6 оронтой код илгээлээ',
              style: TextStyle(color: Color(0xff404040), fontSize: 13),
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 40,
                height: 40,
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: '',
                    counterText: '',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                ),
              ),
              Container(
                width: 40,
                height: 40,
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: '',
                    counterText: '',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                ),
              ),
              Container(
                width: 40,
                height: 40,
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: '',
                    counterText: '',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                ),
              ),
              Container(
                width: 40,
                height: 40,
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: '',
                    counterText: '',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                ),
              ),
              Container(
                width: 40,
                height: 40,
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: '',
                    counterText: '',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                ),
              ),
              Container(
                width: 40,
                height: 40,
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: '',
                    counterText: '',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Container(
            width: 313,
            height: 40,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondPage3()));
              },
              child: Text(
                'Үргэлжлүүлэх',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff404040),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Дахин илгээх',
            style:
                TextStyle(decoration: TextDecoration.underline, fontSize: 11),
          ),
        ],
      ),
    );
  }
}

class SecondPage3 extends StatefulWidget {
  const SecondPage3({super.key});

  @override
  State<SecondPage3> createState() => _SecondPage3State();
}

class _SecondPage3State extends State<SecondPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset(
            'images/Group152.png',
            width: 35,
            height: 35,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Нууц үг сэргээх',
              style: TextStyle(
                  color: Color(0xff404040), fontFamily: 'Inter', fontSize: 20),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.all(20),
          child: Text(
            'Та нууц үгээ шинээр оруулна уу.',
            style: TextStyle(color: Color(0xff404040), fontSize: 13),
          ),
        ),
        SizedBox(height: 10),
        Container(
            width: 313,
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Нууц үг',
                  prefixIcon: Icon(Icons.lock_outline),
                  suffixIcon: Icon(Icons.visibility_outlined),
                  border: OutlineInputBorder()),
            )),
        SizedBox(height: 10),
        Container(
          width: 313,
          height: 50,
          child: TextField(
            decoration: InputDecoration(
                labelText: 'Нууц үг давтах',
                prefixIcon: Icon(Icons.lock_outline),
                suffixIcon: Icon(Icons.visibility_outlined),
                border: OutlineInputBorder()),
          ),
        ),
        SizedBox(height: 30),
        Container(
            width: 313,
            height: 40,
            child: ElevatedButton(
              child: Text(
                'Үргэлжлүүлэх',
                style: TextStyle(color: Colors.white, fontFamily: 'Inter'),
              ),
              onPressed: () {
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => Page4()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff404040),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
            ))
      ]),
    );
  }
}
