import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:ppgbio/splash.dart';

late List<CameraDescription> cameras;
/*
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  cameras = await availableCameras();

  runApp(CamerApp());
}
*/
class CamerApp extends StatefulWidget {
  const CamerApp({Key? key}) : super(key: key);

  @override
  State<CamerApp> createState() => _CamerAppState();
}

class _CamerAppState extends State<CamerApp> {
  late CameraController controller;

  @override
  void initState() {
    super.initState();
    controller = CameraController(cameras[0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return MaterialApp(
      home: CameraPreview(controller),
    );
  }
}




void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  // const myApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Splach(),
    );
  }
}



