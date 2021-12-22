import 'package:flutter/material.dart';

class DeferredBox2 extends StatelessWidget {
  DeferredBox2({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: const Center(
        child: Text('Third widget')
        ,
      ),
    );
  }
}