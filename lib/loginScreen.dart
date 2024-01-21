import 'package:flutter/material.dart';
import 'package:flutter_application_1/colorapp.dart';
import 'package:flutter_application_1/create_page.dart';

class login_Screen extends StatefulWidget {
  login_Screen({super.key});

  @override
  State<login_Screen> createState() => _login_ScreenState();
}

bool isNotVisiable = true;

class _login_ScreenState extends State<login_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/chat.jpg'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Login to your Account',
                style: TextStyle(
                    fontSize: 20,
                    color: colorsapp.blurcolor,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  label: Text(
                    'Email',
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    color: colorsapp.blurcolor,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: colorsapp.blurcolor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: colorsapp.blurcolor),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: isNotVisiable,
                decoration: InputDecoration(
                  label: Text(
                    'Password',
                  ),
                  prefixIcon: Icon(Icons.lock, color: colorsapp.blurcolor),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isNotVisiable = !isNotVisiable;
                        });
                      },
                      icon: Icon((isNotVisiable)
                          ? Icons.visibility_off
                          : Icons.remove_red_eye)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: colorsapp.blurcolor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: colorsapp.blurcolor),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: colorsapp.blurcolor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: Text(
                      'Login',
                      style:
                          TextStyle(color: colorsapp.whitecolor, fontSize: 20),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'i haven\'t an account',
                    style: TextStyle(fontSize: 15),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => create_page(),
                        ));
                      });
                    },
                    child: Text(
                      'create a one?',
                      style: TextStyle(
                          color: colorsapp.blurcolor,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
