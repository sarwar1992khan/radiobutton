import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({Key? key}) : super(key: key);

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {

  String aa="Male",bb="Female",cc="other";
  String gropuname="gender";
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(centerTitle:true,title:Text('RadioButtondemoclass') ,),

      body: Column(
        children: [
          ListTile(
            onTap: (){
              print('Welcome');
            },
            title: const Text('Welcome to Oms infotech'),
            leading:
            Radio(value: aa,
                groupValue: gropuname,
                onChanged:(nnn){
                setState(() {
               gropuname=nnn!;
               print(gropuname);
              });
            })
          ),

          ListTile(
            title: Text('Female'),
              leading: Radio(value: bb,
                  groupValue:
                 gropuname,
                  onChanged:(String ?val){

                setState(() {
                  gropuname=val!;
                  print(gropuname);
                });
              })
          ),
          ListTile(
            title: Text('Other'),
              leading: Radio(value: cc,
                  groupValue: gropuname,
                  onChanged:(String ?val){

                  setState(() {
                  gropuname=val!;
                  print(gropuname);
                  });
              })
          ),
        ],
      ),
    );
  }
}
