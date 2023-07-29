import 'package:flutter/material.dart';
class Muslimbek extends StatefulWidget {
  const Muslimbek({super.key});

  @override
  State<Muslimbek> createState() => _MuslimbekState();
}

class _MuslimbekState extends State<Muslimbek> {
  List<Map<String, dynamic>>savollarVaJavoblar =[
  {
      'savol':'1. What ______ your name?',
    'javoblar':[
      {'matn':'are','togrimi':false},
      {'matn':'is','togrimi':true},
      {'matn':'hello','togrimi':false},
      {'matn':'tom','togrimi':false},
    ],     
  }, 
  {   'savol':'2. What ______ your?',
    'javoblar':[
      {'matn':'hi','togrimi':false},
      {'matn':'me','togrimi':false},
      {'matn':'are','togrimi':true},
      {'matn':'Mike','togrimi':false},
    ],    
  }, 
  {
    'savol':'3. Where ______ she from?',
    'javoblar':[
      {'matn':'Me','togrimi':false},
      {'matn':'Cat','togrimi':true},
      {'matn':'black','togrimi':false},
      {'matn':'is','togrimi':true},
    ],
  },
  {
    'savol':'4. What color ______ you like?',
    'javoblar':[
      {'matn':'Me','togrimi':false},
      {'matn':'do','togrimi':true},
      {'matn':'black','togrimi':false},
      {'matn':'is','togrimi':false},
    ],
  },
  ];
  String question = '1-Savol';
  String Javob1 ='1-Javob S1';
  String Javob2 ='2-Javob S1';
  String Javob3 ='3-Javob S1';
  String Javob4 ='4-Javob S1';
  int hozirgiSavolRaqami=0;
  int natija=0 ;
  void answerQuestion(bool togrimi){
    print(togrimi);
    setState(() {
     if(togrimi){
      natija ++;
      }
     if ( hozirgiSavolRaqami <savollarVaJavoblar.length){
      print('Bizda hali savollar bor');
      
     }else{
      print('Savollar qolmadi');
      
     }
     hozirgiSavolRaqami ++;
   
    });
    
  }
  void restat(){
    setState(() {
      hozirgiSavolRaqami=0;
    natija=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
      primarySwatch: Colors.red,
    ),
      
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ingiliz tili Quiz'),
          leading: InkWell(
            onTap:(() {
              Navigator.pop(context);
            }) ,
            child: Icon(Icons.home)),
          
        ),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: hozirgiSavolRaqami<savollarVaJavoblar.length?
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:[
            Text(savollarVaJavoblar[hozirgiSavolRaqami ]['savol'],style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),),
            ElevatedButton(onPressed:() =>  answerQuestion(
              savollarVaJavoblar[hozirgiSavolRaqami]['javoblar'][0]['togrimi']
            ),
             child:Text( 
              savollarVaJavoblar[hozirgiSavolRaqami]['javoblar'][0]
             ['matn'],
             style:const TextStyle(
              fontSize: 20,
             ),
             ),
             ),
             ElevatedButton(
              onPressed: () => answerQuestion (savollarVaJavoblar[hozirgiSavolRaqami]['javoblar'][1]
              ['togrimi']),
             child:Text(
              savollarVaJavoblar[hozirgiSavolRaqami]['javoblar'][1]
              ['matn'], 
              style:const TextStyle(
              fontSize: 20,
             ))),
              ElevatedButton(
              onPressed: () => answerQuestion (savollarVaJavoblar[hozirgiSavolRaqami]['javoblar'][2]
              ['togrimi']),
             child:Text(
              savollarVaJavoblar[hozirgiSavolRaqami]['javoblar'][2]
              ['matn'], 
              style:const TextStyle(
              fontSize: 20,
             ))),
              ElevatedButton(
              onPressed: () => answerQuestion (savollarVaJavoblar[hozirgiSavolRaqami]['javoblar'][3]
              ['togrimi']),
             child:Text(
              savollarVaJavoblar[hozirgiSavolRaqami]['javoblar'][3]
              ['matn'], 
              style:const TextStyle(
              fontSize: 20,
             ))),
          ]
        ):
         Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Natija: ${natija}/4',
              style:const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
              ),
             ElevatedButton.icon(onPressed: restat, 
             icon:const Icon(Icons.reset_tv),
              label:const  Text('Restat'))
            ],
          ),
        ),  ),
        
      ),
    );
  }
}