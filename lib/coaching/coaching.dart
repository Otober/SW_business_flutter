import 'package:flutter/material.dart';
import 'package:external_app_launcher/external_app_launcher.dart';


class coaching extends StatefulWidget{
  const coaching({Key? key}) : super(key: key);
  @override
  _coaching createState() => _coaching();
}

class _coaching extends State<coaching> {
  @override
  void initState() {
    super.initState();
  }

  Color containerColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('코칭',style:TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          centerTitle: true,
          elevation: 3.0,
          leading: IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_ios)),
          backgroundColor: Colors.redAccent,
          automaticallyImplyLeading: false,


        ),
        body: Center(
          child: Container(
            height: 50,
            width: 150,
            child: ElevatedButton (
                style: ElevatedButton.styleFrom(
                  primary: Colors.redAccent, // Background color
                ),
                onPressed: () async {
                  await LaunchApp.openApp(
                    androidPackageName: 'com.example.posetest',
                    //iosUrlScheme: 'example://',
                    //appStoreLink: 'itms-apps://itunes.apple.com/us/app/pulse-secure/id945832041',
                    openStore: false
                  );

                  // Enter the package name of the App you want to open and for iOS add the URLscheme to the Info.plist file.
                  // The `openStore` argument decides whether the app redirects to PlayStore or AppStore.
                  // For testing purpose you can enter com.instagram.android
                },
                child: Container(
                    child: Center(
                      child: Text("Open",
                        textAlign: TextAlign.center,selectionColor: Colors.redAccent,
                      ),
                    ))),
          ),
        ),
      ),
    );
  }
}
