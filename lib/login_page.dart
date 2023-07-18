import 'package:flutter/material.dart';
import 'package:signal_monty/reset_password.dart';
import 'blog_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  void navigateToSomethink(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
                width: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'خوش آمدید',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    width: 3,
                    height: 6,
                  ),
                  Icon(
                    Icons.login,
                    size: 22,
                  ),
                ],
              ),
              Image(
                image: AssetImage('images/w.png'),
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(200, 40),
                  side: BorderSide(color: Colors.black, width: 2),
                  primary: Colors.black,
                ),
                onPressed: () {
                  navigateToSomethink(context, blogscreen());
                },
                child: Text(
                  'ورود به حساب',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              ElevatedButton(
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.black,
                    minimumSize: Size(200, 40)),
                onPressed: () {},
                child: Text(
                  'ثبت نام',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  navigateToSomethink(context, resetpassword());
                },
                child: Text(
                  'فراموشی رمز عبور',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
