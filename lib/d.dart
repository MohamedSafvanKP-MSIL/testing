import 'package:flutter/material.dart';

class DeferredBox extends StatelessWidget {
  DeferredBox({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: const Center(
        child: Text('First widget')
        ,
      ),
    );
  }
}