import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:country_flags/country_flags.dart';
import 'package:flutter/widgets.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  bool _limit = false;
  Random rand = Random();
  int _token = 0;

  @override
  Widget build(BuildContext context) {
    print(_token);
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
                'Бүртгүүлэх',
                style: TextStyle(
                    color: Color(0xff404040),
                    fontFamily: 'Inter',
                    fontSize: 20),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: const Text(
              'Таны бүртгүүлэх дугаар дээр баталгаажуулах код илгээх болно.',
              style: TextStyle(color: Color(0xff404040), fontSize: 13),
            ),
          ),
          SizedBox(
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
                  padding: const EdgeInsets.fromLTRB(15, 8, 8, 8),
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
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 313,
            height: 40,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Page2()));
              },
              child: Text(
                'Үргэлжлүүлэх',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: _limit
                      ? const Color(0xff404040)
                      : const Color.fromARGB(255, 141, 141, 141),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          )
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

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
          const Row(
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
            child: const Text(
              '${80425077} дугаарт 6 оронтой код илгээлээ',
              style: TextStyle(color: Color(0xff404040), fontSize: 13),
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 40,
                height: 40,
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: const TextField(
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
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: const TextField(
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
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: const TextField(
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
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: const TextField(
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
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: const TextField(
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
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: const TextField(
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
          const SizedBox(height: 30),
          Container(
            width: 313,
            height: 40,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page3()));
              },
              child: const Text(
                'Үргэлжлүүлэх',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff404040),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Дахин илгээх',
            style:
                TextStyle(decoration: TextDecoration.underline, fontSize: 11),
          ),
        ],
      ),
    );
  }
}

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
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
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Бүртгүүлэх',
              style: TextStyle(
                  color: Color(0xff404040), fontFamily: 'Inter', fontSize: 20),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.all(20),
          child: Text(
            'Та өөрийн нэр болон нууц үгийг оруулна уу.',
            style: TextStyle(color: Color(0xff404040), fontSize: 13),
          ),
        ),
        const SizedBox(height: 10),
        Container(
            width: 313,
            height: 50,
            child: const TextField(
              decoration: InputDecoration(
                  labelText: 'Нэр',
                  counterText: '',
                  prefixIcon: Icon(Icons.person_outlined),
                  border: OutlineInputBorder()),
              maxLength: 30,
            )),
        const SizedBox(height: 10),
        Container(
          width: 313,
          height: 50,
          child: const TextField(
            decoration: InputDecoration(
                labelText: 'Нууц үг',
                counterText: '',
                prefixIcon: Icon(Icons.lock_outline),
                suffixIcon: Icon(Icons.visibility_outlined),
                border: OutlineInputBorder()),
            maxLength: 30,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          width: 313,
          height: 50,
          child: const TextField(
            decoration: InputDecoration(
                labelText: 'Нууц үг давтах',
                counterText: '',
                prefixIcon: Icon(Icons.lock_outline),
                suffixIcon: Icon(Icons.visibility_outlined),
                border: OutlineInputBorder()),
            maxLength: 30,
          ),
        ),
        const SizedBox(height: 50),
        Container(
          width: 313,
          height: 40,
          child: ElevatedButton(
            child: const Text(
              'Бүртгүүлэх',
              style: const TextStyle(color: Colors.white, fontFamily: 'Inter'),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Page4()));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff404040),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
          ),
        )
      ]),
    );
  }
}

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  final List<String> policy1 = [
    "Ⅰ.   Нийтлэг үндэслэл",
    "Ⅱ.   Ашиглах журам",
    "Ⅲ.  Компанийн хариуцлагын хязгаарлалт",
    "Ⅳ.  Үйлчилгээний нөхцөлийн хамрах хугацаа",
    "Ⅴ.   Бусад"
  ];

  final List<String> policy2 = [
    '1.1. Рубик Эй Ай ХХК (цаашид "Компани" гэх) нь IOS, Android үйлдлийн системтэй гар утасны Car Care аппликейшн дээр үзүүлэх үйлчилгээний нөхцөлийг нийтэлж байна.',
    '1.2. Энэхүү нөхцөл нь Хэрэглэгч (цаашид "Хэрэглэгч" гэх) сайтаар үйлчилүүлэхээсээ өмнө хүлээн зөвшөөрч баталгаажуулсны үндсэн дээр хэрэгжинэ.',
    '1.3. Энэхүү нөхцөлд өөрөөр заагаагүй бол дараах нэр томьёог дор дурдсан утгаар ойлгоно:'
  ];

  final List<String> policy3 = [
    'Аппликейшн - IOS, Android үйлдлийн системтэй гар утасны аппликейшн болох Car Care нь хэрэглэгчдэд авто машины үйлчилгээг хялбар хурдан авахад зориулагдсан аппликейшн юм. (цаашид "Аппликейшн" гэх);',
    'Хэрэглэгч - энэхүү нөхцөлийг хүлээн зөвшөөрөн Компанийн үйлчилгээг авч буй хувь хүн болон хуулийн этгээд;',
    'Car care үйлчилгээ - аппликейшний туслалцаа'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff404040),
        leading: IconButton(
          icon: Image.asset(
            'images/Group152.png',
            width: 35,
            height: 35,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 25),
          child: Text('Үйлчилгээний нөхцөл',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Inter', fontSize: 20)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Үйлчилгээний нөхцөл',
                  style: TextStyle(fontSize: 13, fontFamily: 'Inter'),
                ),
                const SizedBox(height: 13),
                for (String policy in policy1)
                  Text(
                    policy,
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                const SizedBox(height: 13),
                const Text('Ⅰ. Нийтлэг үндэслэл'),
                for (String policy in policy2)
                  Text(
                    policy + '\n',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                const SizedBox(height: 13),
                const Text('Компани - Рубик Эй Ай ХХК;'),
                for (String policy in policy3)
                  Text(
                    policy + '\n',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
