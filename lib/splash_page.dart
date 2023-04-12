import 'package:flutter/material.dart';
import 'package:vip_signals/login_page.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 4),
      () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => LoginPage(),
          ),
        );
      },
    );

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Image(
                  image: AssetImage('images/loding.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
              Text(
                'version 2.0.2',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Color.fromARGB(255, 112, 112, 112),
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
