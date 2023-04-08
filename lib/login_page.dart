import 'package:flutter/material.dart';
import 'blog_page.dart';
import 'password_recovery.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void NavigateTo(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => page,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'VIP Signals',
                        style: TextStyle(
                          fontSize: 50,
                          color: Colors.blue[900],
                        ),
                      ),
                    ],
                  ),
                ),
                Image(
                  image: AssetImage('images/login.jpg'),
                  fit: BoxFit.cover,
                ),

                // Login button

                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.blue, width: 1.5),
                    minimumSize: Size(170.0, 40.0),
                  ),
                  onPressed: () {
                    NavigateTo(context, BlogPage());
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.blue, fontSize: 16.0),
                    ),
                  ),
                ),

                // Sign In Button

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.black,
                    elevation: 5,
                    minimumSize: Size(170.0, 40.0),
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {},
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),

                // forget Password

                TextButton(
                  onPressed: () {
                    NavigateTo(context, PasswordRecoveryPage());
                  },
                  child: Text('Forgot your Password ?'),
                ),

                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
