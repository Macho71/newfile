import 'package:flutter/material.dart';
import 'package:muslimbek/Home.dart';
import 'package:muslimbek/Rasm.dart';
class Telefon extends StatefulWidget {
  const Telefon({super.key});

  @override
  State<Telefon> createState() => _TelefonState();
}

class _TelefonState extends State<Telefon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ListTile(
        title: Text('Dadajonim'),
        leading: InkWell(
            onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: ((context) {
            return Home();
          })));
        },
          child: CircleAvatar(child: Icon(Icons.person))),

        subtitle: Text('Mobile * 57 daqiqa oldin'),
        trailing: InkWell(
            onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: ((context) {
            return Rasm();
          })));
        },
          child: Icon(Icons.call)),
      ),
    );
  }
}
