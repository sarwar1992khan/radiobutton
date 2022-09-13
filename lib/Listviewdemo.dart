import 'package:flutter/material.dart';

import 'CheckBoxDemoData.dart';
import 'Radio_Button.dart';

class Listviewdemo extends StatefulWidget {
  const Listviewdemo({Key? key}) : super(key: key);

  @override
  State<Listviewdemo> createState() => _ListviewdemoState();
}

class _ListviewdemoState extends State<Listviewdemo> {

  final List<String> entries =['A', 'B', 'C','D',"E","F","G","H","i","j","K","l","M"];
  final List<int> colorCodes = [600, 500, 100,200,400,600,400,600,200,400,300,400,100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Center title'),),
      /*body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          Container(
            height: 100,
            color: Colors.amber[600],
            child: const Center(child: Text('Entry A')),
          ),
          Container(
            height: 100,
            color: Colors.amber[300],
            child: const Center(child: Text('Entry B')),
          ),
          Container(
            height: 100,
            color: Colors.amber[100],
            child: const Center(child: Text('Entry C')),
          ),
          Container(
            height: 100,
            color: Colors.amber[800],
            child: const Center(child: Text('Entry D')),
          ),
        ],
      ),*/
      body: ListView.builder(


          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int i){
          /*  return ;*/
            return GestureDetector(
              onTap: (){
                //print('Pos $i');
                if(i==0) {
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => const RadioButton()));
                }
                else if(i==1)
                  {
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => const CheckBOxDemoData()));
                  }
              },
              child: Container(
                height: 50,
                color: Colors.blue[colorCodes[i]],
                child:  Center(child: Text(entries[i])),
              ),
            );
          }),
    );
  }
}
