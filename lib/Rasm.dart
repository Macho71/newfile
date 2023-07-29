import 'package:flutter/material.dart';
import 'package:muslimbek/Home.dart';
class Rasm extends StatefulWidget {
  const Rasm({super.key});
  
  @override
  State<Rasm> createState() => _RasmState();
}

class _RasmState extends State<Rasm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Container(
        child: Icon(Icons.call,size: 170,color: Colors.green,),
      )),
    );

  }
}