import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'd.dart' deferred as box;
import 'first.dart' deferred as box1;
import 'second.dart' deferred as box2;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<void> _libraryFuture;
  //late List<Future<void>> _libFuture;
  int i = 1;

  Widget getwidget(){
    print('value of I in getwidget:$i');
    if(i == 1){
      i++;
      return box.DeferredBox();
    }else if(i == 2){
      i++;
      return box1.DeferredBox1();
    }else{
      i=1;
      return box2.DeferredBox2();
    }

  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('value of I:$i');
    if(i==1){
      _libraryFuture = box.loadLibrary();
    }else if(i==2){
      _libraryFuture =  box1.loadLibrary();
    }else{
      _libraryFuture = box2.loadLibrary();
    }
    return FutureBuilder<void>(
      future: _libraryFuture,
      builder: (ctx, snapshot) {
        print('snapshot:$snapshot');
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children : [
                TextButton(onPressed: (){
                  setState(() {
                  });
                }, child: Text('click me')),
                getwidget()
              ] ,
            ),
          );
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
