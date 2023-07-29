import 'package:flutter/material.dart';
import 'package:muslimbek/Muslimbek.dart';
import 'package:muslimbek/New_test.dart';
import 'package:muslimbek/Rasm.dart';
import 'package:muslimbek/Telefon.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
   void restat(){
    setState(() {
      Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return Muslimbek();
                          }
                          )));
    });
  }
  void new_test(){
    setState(() {
      Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return Test_New();
                          }
                          )));
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
       
        child: Column(
           mainAxisAlignment:MainAxisAlignment.center,
          children: [
             ElevatedButton.icon(onPressed: restat, 
             icon:const Icon(Icons.start),
              label:const  Text('Testni boshlash')),
               ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context, 
                  MaterialPageRoute(builder: ((context) {
                    return Telefon();
                  }))
                  );
                },
             icon:const Icon(Icons.read_more),
              label:const  Text('Yangi testlarni yaratish'))
          ],
        ),
      ),
      ),
    );
  }
}