import 'package:flutter/material.dart';
import 'package:flutter_application_1/colorapp.dart';
import 'package:flutter_application_1/loginScreen.dart';

class create_page extends StatefulWidget {
  const create_page({super.key});

  @override
  State<create_page> createState() => _create_pageState();
}

bool isNotVisible = true;

class _create_pageState extends State<create_page> {
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
                'Create an account',
                style: TextStyle(
                    color: colorsapp.blurcolor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    label: Text('name'),
                    prefixIcon: Icon(
                      Icons.person,
                      color: colorsapp.blurcolor,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: colorsapp.blurcolor)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: colorsapp.blurcolor)),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.red),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    label: Text('Email'),
                    prefixIcon: Icon(
                      Icons.email,
                      color: colorsapp.blurcolor,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: colorsapp.blurcolor)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: colorsapp.blurcolor)),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.red),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                obscureText: isNotVisible,
                decoration: InputDecoration(
                    label: Text('password'),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: colorsapp.blurcolor,
                    ),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isNotVisible = !isNotVisible;
                          });
                        },
                        icon: Icon(
                          (isNotVisible)
                              ? Icons.visibility_off
                              : (Icons.remove_red_eye),
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: colorsapp.blurcolor)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: colorsapp.blurcolor)),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.red),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: colorsapp.blurcolor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {},
                      child: Text(
                        'Register',
                        style: TextStyle(
                            color: colorsapp.whitecolor, fontSize: 17),
                      ))),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'IF U have an Account?',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => login_Screen(),
                        ));
                      },
                      child: Text(
                        'Login Now',
                        style:
                            TextStyle(fontSize: 17, color: colorsapp.blurcolor),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
