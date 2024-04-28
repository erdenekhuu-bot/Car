import 'package:flutter/material.dart';
import 'usable/Card.dart';

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
              const SizedBox(height: 12),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 18,
                    children: [
                      Cart(
                          img: Image.asset('images/Group23.png'),
                          txt: 'Агрегат'),
                      Cart(
                          img: Image.asset('images/Group19.png'), txt: 'Кузов'),
                      Cart(img: Image.asset('images/Vector.png'), txt: 'Дугуй'),
                      Cart(
                          img: Image.asset('images/Group55.png'),
                          txt: 'Угаалга'),
                      Cart(
                          img: Image.asset('images/Vectorm.png'),
                          txt: 'Мотоцикл'),
                      Cart(
                          img: Image.asset('images/Group17.png'),
                          txt: 'Оношилгоо'),
                      Cart(
                          img: Image.asset('images/Group40.png'),
                          txt: 'Тос тосолгоо'),
                      Cart(
                          img: Image.asset('images/amor.png'),
                          txt: 'Амартизатор'),
                      Cart(
                          img: Image.asset('images/Group381.png'),
                          txt: 'Акумлятор'),
                      Cart(
                          img: Image.asset('images/marketeq_chassis.png'),
                          txt: 'Тэнхлэг тохиргоо'),
                      Cart(
                          img: Image.asset('images/Group301.png'),
                          txt: 'Мотор засвар'),
                      Cart(
                          img: Image.asset('images/Vector11.png'),
                          txt: 'Явах эд анги'),
                      Cart(
                          img: Image.asset('images/Group33.png'),
                          txt: 'Эйр кондишн'),
                      Cart(
                          img: Image.asset('images/line-md_computer.png'),
                          txt: 'Ком.оншилгоо'),
                      Cart(
                          img: Image.asset('images/Vector41.png'),
                          txt: 'Дугуй'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
