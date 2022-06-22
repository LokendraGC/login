import 'package:flutter/material.dart';
import 'package:project_three/main.dart';
// import 'package:flutter/login_page.dart';

class fourthpage extends StatefulWidget {
  @override
  State<fourthpage> createState() => _fourthpageState();
}

class _fourthpageState extends State<fourthpage> {
  //const fourthpage({Key? key}) : super(key: key);
  // var getname;

  // var index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return ListTile(
            subtitle: Text('$index'),
            title: Text('Item'),
            leading: Icon(Icons.abc),
          );
        },
      ),
    );
  }
}

// Widget customcontainer() {
//   return Container(
//     height: 20,
//     width: 20,
//     color: Colors.green,
//   );
// }
