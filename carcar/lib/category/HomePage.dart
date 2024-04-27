import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        const Text(
                          'Сайн байна уу.',
                          style: TextStyle(fontSize: 13),
                        ),
                        const Text(
                          'Машин нэмэх +',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Icon(Icons.notification_add),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 360,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffC4C4C4),
                    ),
                    child: const Image(
                        image: AssetImage('images/Rectangle5275.png')),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 351,
                    height: 40,
                    child: TextField(
                      onTap: () {},
                      decoration: InputDecoration(
                          hintText: '',
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder()),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text('Үйлчилгээ',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Inter'))),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 3),
                              child:
                                  Text('Бүгд', style: TextStyle(fontSize: 14))),
                          Icon(Icons.arrow_forward_ios_outlined, size: 15)
                        ],
                      )),
                ],
              ),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xff404040),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Image(image: AssetImage('images/Group23.png')),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xff404040),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Image(image: AssetImage('images/Group19.png')),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xff404040),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Image(image: AssetImage('images/Vector.png')),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xff404040),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Image(image: AssetImage('images/Group55.png')),
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xff404040),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Image.asset('images/Vectorm.png')),
              ]),
              Row()
            ],
          ),
        ],
      ),
    );
  }
}