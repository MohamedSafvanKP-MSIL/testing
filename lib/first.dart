import 'package:flutter/material.dart';

class DeferredBox1 extends StatelessWidget {
  DeferredBox1({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: const Center(
        child: Text('Second widget')
        ,
      ),
    );
  }
}