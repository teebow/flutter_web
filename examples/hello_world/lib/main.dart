// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_web.examples.hello_world/timer.dart';
import 'package:flutter_web/material.dart';

void main() {
  runApp(
    Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Text('Hello World',
            style: TextStyle(color: Colors.blue),
            textDirection: TextDirection.ltr),
        Timer(
          secondsRemaining: 30,
          whenTimeExpires: () {
            // setState(() {
            //   var hasTimerStopped = true;
            // });
          },
          countDownTimerStyle: TextStyle(
              color: Colors.red.shade800, fontSize: 48.0, height: 1.2),
        ),
      ],
    ),
  );
}
