import 'package:flutter/material.dart';
import 'usable/Card.dart';
import 'usable/SubTitle.dart';
import 'usable/BackgroundImage.dart';
import 'usable/OfferPlace.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 242, 242),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Сайн байна уу'),
                        Text('Car Care',
                            style: TextStyle(fontFamily: 'Inter', fontSize: 15))
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          'Дуудлагын засвар',
                          style: TextStyle(fontFamily: 'Inter'),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color(0xff232323)),
                        child: Image.asset('images/iconoir_headset-help.png'),
                      )
                    ],
                  )
                ],
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 360),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BackgroundImage(
                        img: Image.asset('images/Rectangle5275.png'),
                      ),
                      BackgroundImage(
                        img: Image.asset('images/Rectangle5275.png'),
                      ),
                    ],
                  ),
                ),
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
                          filled: true,
                          fillColor: Colors.white,
                          hintText: '',
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              SubTitle(firstTitle: 'Үйлчилгээ', secondTitle: 'Бүгд'),
              const SizedBox(height: 12),
              Container(
                padding: EdgeInsets.all(8),
                width: 351,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 351),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 18,
                      children: [
                        Cart(
                            img: Image.asset('images/Group23.png'),
                            txt: 'Агрегат'),
                        Cart(
                            img: Image.asset('images/Group19.png'),
                            txt: 'Кузов'),
                        Cart(
                            img: Image.asset('images/Vector.png'),
                            txt: 'Дугуй'),
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
                            img: Image.asset('images/Group21.png'),
                            txt: 'Сэлбэг худалдаа'),
                        Cart(
                            img: Image.asset('images/Group24.png'),
                            txt: 'Наклад тормос'),
                        Cart(
                            img: Image.asset('images/Group69.png'),
                            txt: 'Машин худалдаа'),
                        Cart(
                          img: Image.asset('images/Group85.png'),
                          txt: 'Машин будаг',
                        ),
                        Cart(
                            img: Image.asset('images/Group68.png'),
                            txt: 'Дуудлагын засвар'),
                        Cart(
                            img: Image.asset('images/Group20.png'),
                            txt: 'Машин ачлага')
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              SubTitle(
                  firstTitle: 'Санал болгож буй газрууд', secondTitle: 'Бүгд'),
              SizedBox(height: 10),
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 215),
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      OfferPlace(
                        img: Image.asset('images/Rectangle5219.png'),
                        title: 'Auto Grand',
                        phone: 86999042,
                      ),
                      SizedBox(height: 10),
                      OfferPlace(
                        img: Image.asset('images/Rectangle5219.png'),
                        title: 'Auto Grand',
                        phone: 86999042,
                      ),
                      SizedBox(height: 10),
                      OfferPlace(
                        img: Image.asset('images/Rectangle5219.png'),
                        title: 'Auto Grand',
                        phone: 86999042,
                      ),
                      SizedBox(height: 10),
                      OfferPlace(
                        img: Image.asset('images/Rectangle5219.png'),
                        title: 'Auto Grand',
                        phone: 86999042,
                      ),
                      SizedBox(height: 10),
                      OfferPlace(
                        img: Image.asset('images/Rectangle5219.png'),
                        title: 'Auto Grand',
                        phone: 86999042,
                      ),
                      SizedBox(height: 10),
                      OfferPlace(
                        img: Image.asset('images/Rectangle5219.png'),
                        title: 'Auto Grand',
                        phone: 86999042,
                      ),
                      SizedBox(height: 10),
                      OfferPlace(
                        img: Image.asset('images/Rectangle5219.png'),
                        title: 'Auto Grand',
                        phone: 86999042,
                      ),
                      SizedBox(height: 10),
                      OfferPlace(
                        img: Image.asset('images/Rectangle5219.png'),
                        title: 'Auto Grand',
                        phone: 86999042,
                      ),
                      SizedBox(height: 10),
                      OfferPlace(
                        img: Image.asset('images/Rectangle5219.png'),
                        title: 'Auto Grand',
                        phone: 86999042,
                      ),
                      SizedBox(height: 10),
                      OfferPlace(
                        img: Image.asset('images/Rectangle5219.png'),
                        title: 'Auto Grand',
                        phone: 86999042,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
