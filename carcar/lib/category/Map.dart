import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'usable/MapMenu.dart';

class Map extends StatefulWidget {
  const Map({super.key});

  @override
  State<Map> createState() => _MapState();
}

class _MapState extends State<Map> {
  final LatLng _address = LatLng(47.9221, 106.9155);
  bool _firstClick = false;
  bool _secondClick = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GoogleMap(
            initialCameraPosition: CameraPosition(target: _address, zoom: 14)),
        Positioned(
          top: 60,
          left: 20,
          child: Container(
            width: 152,
            height: 53,
            decoration: BoxDecoration(
              color: _firstClick
                  ? Color(0xff404040).withOpacity(0.8)
                  : Color.fromARGB(255, 112, 112, 112).withOpacity(0.8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _firstClick = !_firstClick;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Агрегат засвар',
                          style: TextStyle(color: Colors.white)),
                      _firstClick
                          ? Icon(
                              Icons.arrow_drop_down_outlined,
                              color: Colors.white,
                            )
                          : Icon(
                              Icons.arrow_drop_up_outlined,
                              color: Colors.white,
                            ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        _firstClick
            ? Positioned(
                top: 120,
                left: 20,
                child: Column(
                  children: [
                    MapFirstMenu(name: 'Кузов засвар'),
                    MapFirstMenu(name: 'Угаалга'),
                    MapFirstMenu(name: 'Машин худалдаа'),
                    MapFirstMenu(name: 'Сэлбэг худалдаа'),
                    MapFirstMenu(name: 'Дугуй'),
                    MapFirstMenu(name: 'Машин будаг'),
                    MapFirstMenu(name: 'Мотоцикл')
                  ],
                ))
            : Text(''),
        Positioned(
          top: 60,
          right: 20,
          child: Container(
            width: 192,
            height: 53,
            decoration: BoxDecoration(
              color: _secondClick
                  ? Color(0xff404040).withOpacity(0.8)
                  : Color.fromARGB(255, 112, 112, 112).withOpacity(0.8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _secondClick = !_secondClick;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Тос солих', style: TextStyle(color: Colors.white)),
                      _secondClick
                          ? Icon(
                              Icons.arrow_drop_down_outlined,
                              color: Colors.white,
                            )
                          : Icon(
                              Icons.arrow_drop_up_outlined,
                              color: Colors.white,
                            ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        _secondClick
            ? Positioned(
                top: 120,
                right: 20,
                child: Column(children: [
                  MapSecondMenu(name: 'Оношилгоо'),
                  MapSecondMenu(name: 'Тос тосолгоо'),
                  MapSecondMenu(name: 'Амартизатор'),
                  MapSecondMenu(name: 'Аккумлятор'),
                  MapSecondMenu(name: 'Тэнхлэг тохиргоо'),
                  MapSecondMenu(name: 'Мотор засвар'),
                  MapSecondMenu(name: 'Явах эд анги'),
                  MapSecondMenu(name: 'Компьютер оношилгоо'),
                  MapSecondMenu(name: 'Эйр кондейшн'),
                  MapSecondMenu(name: 'Наклад тормос')
                ]),
              )
            : Text(''),
      ],
    );
  }
}
