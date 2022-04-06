import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ppgbio/main.dart';
import 'package:ppgbio/videorecoder.dart';
import 'package:camera/camera.dart';
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RaisedButton(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            onPressed: () async{
              WidgetsFlutterBinding.ensureInitialized();
              cameras = await availableCameras();


              print("RaisedButton");
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => CamerApp()));
            },
            color: Color.fromARGB(255, 212, 109, 101),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Text(
              "Gather Data",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      )),
    );
  }
}
