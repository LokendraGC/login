import 'package:flutter/material.dart';
import 'package:project_three/pages/thirdpage.dart';
import 'package:project_three/pages/home_pages.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    // color: Colors.green,
                    borderRadius: BorderRadius.circular(70),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image:
                          NetworkImage('https://wallpaperaccess.com/picsart'),
                    ),
                  )),

              // Container(
              //     child: Image.network(
              //         ' https://images.unsplash.com/photo-1592743263126-bb241ee76ac7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bmF0dXJhbCUyMGJhY2tncm91bmR8ZW58MHx8MHx8&w=1000&q=80 ')),

              Text(
                "My second Page",
                style: TextStyle(fontSize: 20, backgroundColor: Colors.green),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },

                // child: Center(
                //   child: Column(
                //     children: [
                //       Image.asset(
                //         'photos/2.png',
                //         height: 200,
                //         width: 400,
                //       ),
                //       SizedBox(
                //         height: 50,
                //       ),
                //       Image.asset(
                //         'photos/1.png',
                //         height: 250,
                //         width: 400,
                //       ),
                //     ],
                //   ),
                // ),

                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Go Back",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    )),
              ),
              // ElevatedButton(
              //   child: Text("NextPage"),
              //   onPressed: () {
              //     Navigator.push(context, MaterialPageRoute(builder: (context) {
              //       return thirdpage();
              //     }));
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
