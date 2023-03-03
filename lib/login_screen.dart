import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Container(
          child: const Text('Register'),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: size.height * 0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:
            [
              Container(
                height: size.height * 0.07,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    border: OutlineInputBorder(
                    ),
                  ),
                ),
              ),
              SizedBox(
                  height: size.height * 0.015
              ),
              Container(
                height: size.height * 0.07,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    border: OutlineInputBorder(
                    ),
                  ),
                ),
              ),
              SizedBox(
                  height: size.height * 0.015
              ),
              Container(
                height: size.height * 0.07,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_outline,
                    ),
                    labelText: 'Password',
                    suffixIcon: Icon(
                        Icons.remove_red_eye
                    ),
                    border: OutlineInputBorder(
                    ),
                  ),
                ),
              ),
              SizedBox(
                  height: size.height * 0.015
              ),
              Container(
                height: size.height * 0.07,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_outline,
                    ),
                    labelText: 'Confirm Password',
                    suffixIcon: Icon(
                        Icons.remove_red_eye
                    ),
                    border: OutlineInputBorder(
                    ),
                  ),
                ),
              ),
              SizedBox(
                  height: size.height * 0.015
              ),
              Container(
                height: size.height * 0.07,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                        Icons.phone
                    ),
                    labelText: 'Phone number',
                    border: OutlineInputBorder(
                    ),
                  ),
                ),
              ),
              SizedBox(
                  height: size.height * 0.015
              ),
              Container(
                  height: size.height * 0.07,
                  width: size.width * 0.5,
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: size.width * (0.90),
                    height: size.height * (0.12),
                    child: TextButton(
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),

                        ),
                        onPressed: () { },
                        child: Text('Register')
                    ),
                  )
              ),
              SizedBox(
                  height: size.height * 0.015
              ),
              Container(
                  height: size.height * 0.07,
                  width: size.width * 0.5,
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: size.width * (0.90),
                    height: size.height * (0.12),
                    child: OutlinedButton(
                      child: Text("Login"),
                      style: OutlinedButton.styleFrom(
                        primary: Colors.purple,
                        side: BorderSide(
                          color: Colors.purple,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  )
              ),
            ],
          ),
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
