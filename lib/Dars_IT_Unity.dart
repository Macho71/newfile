import 'package:flutter/material.dart';
class Dars1 extends StatefulWidget {
  const Dars1({super.key});
  @override
  State<Dars1> createState() => _Dars1State();
}
class _Dars1State extends State<Dars1> {
  int selectedIndex=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          height: 160,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              return InkWell(
                      onTap: () {
                          setState(() {
                           if( selectedIndex==index)
                          { selectedIndex;}
                           else
                            {selectedIndex=index;}
                          });
                        },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                  width: 120,
                                // height: 90,
                  color: selectedIndex==index? Colors.brown:Colors.grey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Icon(Icons.wordpress_outlined,
                   color: selectedIndex==index?Colors.grey:Colors.brown,),
                      Text('World!!!',
                      style: TextStyle(
                        color: selectedIndex==index?Colors.grey:Colors.brown,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
                      ),
                ),
              );
            },
           
          ),
        )),
    );
  }
}