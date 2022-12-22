import 'package:flutter/material.dart';

import '../HomePage/Widget/ContainerWidget.dart';

class Lesson6 extends StatefulWidget {
  const Lesson6({Key? key}) : super(key: key);

  @override
  State<Lesson6> createState() => _Lesson6State();
}

bool switchOn =true;

class _Lesson6State extends State<Lesson6> {
   List<Widget> vegetables = <Widget>[
    Text('Tomatoes'),
    Text('Potatoes'),
    Text('Carrots')
  ];
  final List<bool> _selectedFruits = <bool>[true, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drower"),

      ),
      drawer: Drawer(
        child: ListView(

          children:  [

            ListTile(
              onTap: (){
                print("tap");
              },
              title: Text("Setting"),
            ),
            ListTile(
              onTap: (){
                print("tap");
              },
              title: Text("Setting"),
            ),
            ListTile(
              onTap: (){
                print("tap");
              },
              title: Text("Setting"),
            )


          ],
        ),
      ),
      body: Center(
        child:
        Column(
      //    mainAxisAlignment: MainAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
        //      Flexible(
        //        flex: 2,
        //        child: Container(
        //          height: 100,
        //            width: 100,
        //            color: Colors.deepOrange,
        //            child: Text("Text 1", style: TextStyle(fontSize: 24),)),
        //      ),
        //
        //
        // Flexible(
        //   child: Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.grey,
        //       child: Text("Text 1", style: TextStyle(fontSize: 24),)),
        // ),
        //
        //
        //     Flexible(
        //   flex: 2,
        //   child: Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.amber,
        //       child: Text("Text 1", style: TextStyle(fontSize: 24),)),
        // ),
        //
        //
        //     const ListTile(
        //       leading: CircleAvatar(
        //         backgroundColor: Colors.black,
        //       ),
        //       trailing: Icon(Icons.phone),
        //       title: Text("User Name"),
        //       subtitle: Text("Message"),
        //     ),
        //
        //     Switch(value: switchOn,
        //         activeColor: Colors.black,
        //         onChanged: (value){
        //       print(value);
        //       setState(() {
        //         switchOn = value;
        //       });
        //
        //     }),
        //
        //     TextWidget(name: 'Aziz',),
        //     SizedBox(height: 20,),
        //     TextWidget(name: 'Pia',),
        //     SizedBox(height: 20,),
        //     TextWidget(name: 'Shawn',),
            
            ToggleButtons(isSelected: _selectedFruits,

            onPressed: (value){
             setState(() {
               _selectedFruits[value] = !_selectedFruits[value];
             });

            },

              children: vegetables,
            )




          ],
        )

        // RichText(
        //   text: const TextSpan(
        //     text: 'Hello',
        //     style: TextStyle(fontSize: 24, color: Colors.deepOrange),
        //     children: <TextSpan>[
        //       TextSpan(
        //           text: 'bold',
        //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
        //       TextSpan(text: ' world!', style: TextStyle(fontSize: 18)),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
