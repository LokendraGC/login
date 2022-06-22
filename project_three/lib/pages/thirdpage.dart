import 'package:flutter/material.dart';

class thirdpage extends StatelessWidget {
  const thirdpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.network(
              //     ' https://images.unsplash.com/photo-1592743263126-bb241ee76ac7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bmF0dXJhbCUyMGJhY2tncm91bmR8ZW58MHx8MHx8&w=1000&q=80 '),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Go Back",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
