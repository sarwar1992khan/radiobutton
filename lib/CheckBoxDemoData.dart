import 'package:flutter/material.dart';

class CheckBOxDemoData extends StatefulWidget {
  const CheckBOxDemoData({Key? key}) : super(key: key);

  @override
  State<CheckBOxDemoData> createState() => _CheckBOxDemoDataState();
}

class _CheckBOxDemoDataState extends State<CheckBOxDemoData> {

  bool abc=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Checkbox(
                value:abc,
                onChanged:(aa){
                  setState(() {
                    abc=aa!;

                  });

            }),
            const Text('Android'),
           const SizedBox(width: 50,),
            const Text('20000'),

            
            Column(children: [
              Visibility(child: Text('Display all Infomation'),visible:abc,)
            ],)

          ],
        ),

      )
    );
  }
}
