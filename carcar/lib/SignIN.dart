import 'package:carcar/Recover.dart';
import 'package:flutter/material.dart';
import 'Register.dart';
import 'Home.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _check = false;
  bool _limit = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 242, 242),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                height: 60,
                image: AssetImage(
                  'images/Logo.png',
                ),
              ),
            ],
          ),
          Text('Car Car',
              style: TextStyle(
                  color: Color(0xFF404040),
                  fontFamily: 'Inter',
                  fontSize: 25,
                  fontWeight: FontWeight.bold)),
          Container(
            width: 313,
            height: 50,
            margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  if (value.length < 8) {
                    _limit = false;
                  } else {
                    _limit = true;
                  }
                });
              },
              decoration: InputDecoration(
                labelText: 'Утасны дугаар',
                prefixIcon: Icon(Icons.person_outline),
                counterText: '',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              maxLength: 8,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Container(
            width: 313,
            height: 50,
            margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Нууц үг',
                counterText: '',
                prefixIcon: const Icon(Icons.lock_outline),
                suffixIcon: GestureDetector(
                    child: _check
                        ? const Icon(Icons.visibility_outlined)
                        : const Icon(Icons.visibility_off_outlined),
                    onTap: () {
                      setState(() {
                        _check = !_check;
                      });
                    }),
                border: const OutlineInputBorder(),
              ),
              maxLength: 30,
              obscureText: _check ? false : true,
            ),
          ),
          const SizedBox(height: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondPage1()));
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                  child: const Text(
                    'Нууц үг сэргээх',
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 40),
          Container(
            width: 313,
            height: 40,
            child: ElevatedButton(
              child: Text(
                'Нэвтрэх',
                style: TextStyle(color: Colors.white, fontFamily: 'Inter'),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: _limit
                    ? const Color(0xff404040)
                    : const Color.fromARGB(255, 141, 141, 141),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            width: 313,
            height: 40,
            child: ElevatedButton(
              child: Text(
                'Бүртгүүлэх',
                style: TextStyle(
                  color: Color(0xff404040),
                  fontFamily: 'Inter',
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Page1()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
