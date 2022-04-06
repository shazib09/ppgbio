import 'package:flutter/material.dart';






class dividee extends StatelessWidget {
  const dividee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 40;
    return MaterialApp(
      home: Center(
        child: Material(
          child: Container(
            child: Text(
                "hello $days days wellcome Now I will tell you how this works"),
          ),
        ),
      ),
    );
  }
}
