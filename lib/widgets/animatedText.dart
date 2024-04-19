import 'dart:ffi';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextwidget extends StatelessWidget {
  const AnimatedTextwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('animated text widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(animatedTexts: [
              TypewriterAnimatedText('king kizo hills',
                  textStyle: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                      color: Colors.red))
            ]),
            AnimatedTextKit(animatedTexts: [
              RotateAnimatedText('hello',
                  textStyle: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                      color: Colors.red))
            ]),
            AnimatedTextKit(animatedTexts: [
              RotateAnimatedText('zona',
                  textStyle: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                      color: Colors.red))
            ]),
            AnimatedTextKit(animatedTexts: [
              WavyAnimatedText('acknowledge',
                  textStyle: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                      color: Colors.red))
            ])
          ],
        ),
      ),
    );
  }
}
