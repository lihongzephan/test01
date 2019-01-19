// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Import Flutter Darts
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:threading/threading.dart';

// Import Self Darts
import 'Home.dart';
import 'gv.dart';
import 'LangStrings.dart';
import 'ScreenVariables.dart';

void main() {
  sv.Init();
  ls.setLang('SC');
  gv.strTest = "HomeContent";

  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}
class _MainAppState extends State<MainApp> {
  @override
  initState() {
    super.initState();
    // Add listeners to this class, if any
    // Any codes put here will be run only once whenever
    // this page is called from some other pages.
    var threadTimerMain = new Thread(funTimerMain);
    threadTimerMain.start();
  }

  void funTimerMain() async {
    while (true) {
      await Thread.sleep(500);
      setState(() {
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainBody()
    );
  }
}

class MainBody extends StatefulWidget {
  @override
  _MainBodyState createState() => _MainBodyState();
}
class _MainBodyState extends State<MainBody> {
  @override
  initState() {
    super.initState();
    // Add listeners to this class, if any
    // Any codes put here will be run only once whenever
    // this page is called from some other pages.
  }
  @override
  Widget build(BuildContext context) {
    switch (gv.strCurPage) {
      case 'Home':
        return ClsHome();
        break;
      default:
        break;
    }
  }
}
