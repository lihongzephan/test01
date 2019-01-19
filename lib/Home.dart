// Import Flutter Darts
import 'package:flutter/material.dart';
import "package:threading/threading.dart";

// Import Self Darts
import 'gv.dart';
import 'LangStrings.dart';
import 'ScreenVariables.dart';

class ClsHome extends StatefulWidget {
  @override
  _ClsHomeState createState() => _ClsHomeState();
}
class _ClsHomeState extends State<ClsHome> {
  @override
  initState() {
    super.initState();
    // Add listeners to this class, if any
    var threadTimerHome = new Thread(funTimerHome);
    threadTimerHome.start();
  }

  void funTimerHome() async {
    while (true) {
      await Thread.sleep(1000);
      gv.intCount += 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(sv.dblTopHeight), // here the desired height
        child: AppBar(
          title: Text('My First App'),
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.greenAccent,
          height: sv.dblBodyHeight * 0.8,
          width: sv.dblScreenWidth * 0.8,
          child: Center(
            child: Text(
              gv.intCount.toString(),
              style: TextStyle(fontSize: sv.dblDefaultFontSize),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}