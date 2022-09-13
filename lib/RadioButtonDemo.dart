import 'package:flutter/material.dart';
class RadioButtonDemo extends StatefulWidget{
  const RadioButtonDemo({Key? key}) : super(key: key);

  @override
  State<RadioButtonDemo> createState() => _RadioButtonDemoState();
}

class _RadioButtonDemoState extends State<RadioButtonDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Display RadioButton'),),
      body: Center(
        child: Container(
          child: Column(
            children: [

              Row(
                children: [

                 const Text('Android'),
                 SizedBox(width: 10,),
                  const Text('Java'),
                ],
              ),
              Row(
                children: [

                  const Text('Android'),
                  SizedBox(width: 10,),
                  const Text('Java'),
                ],
              ),
              Row(
                children: [

                  const Text('Android'),
                  SizedBox(width: 10,),
                  const Text('Java'),
                ],
              ),
              
              Column(
                children: [
                  Row(
                    children: [
                      Text('hello')
                    ],
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
