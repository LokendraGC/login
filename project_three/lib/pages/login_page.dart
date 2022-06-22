import 'package:flutter/material.dart';
import 'package:project_three/pages/fourthpage.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);
  // bool isVisible = true;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailcontroler = TextEditingController();

  bool isVisible = true;

  String getname = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 18,
          ), //

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                textform(
                  hintText: 'Email',
                  icons: Icons.email,
                  color: Colors.black,
                  controller: emailcontroler,
                ),

                textform(
                    hintText: 'Name',
                    icons: Icons.account_circle,
                    color: Colors.black),

                textform(
                  hintText: 'password',
                  icons: Icons.lock,
                  color: Colors.black,
                  alex: Icons.visibility,
                ),

                // textform('email', Icons.email, Colors.red,
                //     Icons.no_luggage_outlined),
                // SizedBox(
                //   height: 19,
                // ),
                // textform(
                //     'phone', Icons.phone, Colors.green, Icons.access_alarm),
                // SizedBox(
                //   height: 19,
                // ),
                // textform('password', Icons.remove_red_eye, Colors.blue,
                //     Icons.remove_red_eye),
                SizedBox(
                  height: 19,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      minimumSize: const Size.fromHeight(50), // NEW
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => fourthpage()));

                      // setState(() {
                      //   getname = emailcontroler.text;
                      // });
                      // print(emailcontroler.text.toString());
                    },
                    child: Center(
                        child: Text(
                      'Login',
                    ))),

                Text(
                  'Email:$getname',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class textform extends StatefulWidget {
  final IconData icons;
  final String hintText;
  final Color color;
  final IconData? alex;
  final controller;

  textform(
      {required this.hintText,
      required this.icons,
      required this.color,
      this.alex,
      this.controller});

  @override
  State<textform> createState() => _textformState();
}

class _textformState extends State<textform> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: TextFormField(
          controller: widget.controller,
          obscureText: isVisible,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: widget.color, width: 1)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 1)),
              hintText: widget.hintText,
              prefixIcon: Icon(
                widget.icons,
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                  print(isVisible);
                },
                icon: Icon(widget.alex),
              ))),
    );
  }
}
