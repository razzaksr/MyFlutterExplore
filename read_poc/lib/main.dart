import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    // stateless widget
    // home: ReadCard(),
    //stateful widget
    home: ReadCard(),
  ));
}

class ReadCard extends StatefulWidget {
  const ReadCard({super.key});

  @override
  State<ReadCard> createState() => _ReadCardState();
}

class _ReadCardState extends State<ReadCard> {

  int commercials=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Zealous Tech Corp Expert'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('images/razak.png'),
              radius: 50.0,
            ),
          ),
          Divider(
            height: 100.0,
            color: Colors.lightBlue,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text('Expert Name',style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal
                  ),),
                  SizedBox(height: 10.0,),
                  Text('Razak Mohamed S',style: TextStyle(color: Colors.lightBlue,
                      fontWeight: FontWeight.bold,fontSize: 25.0),),
                  Text('Expert Designation',style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal
                  ),),
                  SizedBox(height: 10.0,),
                  Text('L&D Manager',style: TextStyle(color: Colors.lightBlue,
                      fontWeight: FontWeight.bold,fontSize: 25.0),),
                  SizedBox(height: 10.0,),
                  Text('Expert Commercial/day',style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal
                  ),),
                  SizedBox(height: 10.0,),
                  Text('$commercials',style: TextStyle(color: Colors.lightBlue,
                      fontWeight: FontWeight.bold,fontSize: 25.0),),
                  Text('Expert Email',style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal
                  ),),
                  Row(
                    children: [
                      Icon(Icons.email_outlined),
                      SizedBox(height:10.0),
                      Text('razaksrmd@gmail.com',style: TextStyle(color: Colors.lightBlue,
                          fontWeight: FontWeight.bold,fontSize: 25.0),),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            commercials+=500;
          });
        },
        child: Icon(Icons.add,color: Colors.white70,),
        backgroundColor: Colors.lightBlue,
      ),
    );
  }
}

// class ReadCard extends StatelessWidget {
//   const ReadCard({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Zealous Tech Corp Expert'),
//         centerTitle: true,
//         backgroundColor: Colors.lightBlue,
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Center(
//             child: CircleAvatar(
//               backgroundImage: AssetImage('images/razak.png'),
//               radius: 50.0,
//             ),
//           ),
//           Divider(
//             height: 100.0,
//             color: Colors.lightBlue,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Column(
//                 children: [
//                   Text('Expert Name',style: TextStyle(
//                       color: Colors.lightBlue,
//                       fontSize: 20.0,
//                       fontWeight: FontWeight.normal
//                   ),),
//                   SizedBox(height: 10.0,),
//                   Text('Razak Mohamed S',style: TextStyle(color: Colors.lightBlue,
//                       fontWeight: FontWeight.bold,fontSize: 25.0),),
//                   Text('Expert Designation',style: TextStyle(
//                       color: Colors.lightBlue,
//                       fontSize: 20.0,
//                       fontWeight: FontWeight.normal
//                   ),),
//                   SizedBox(height: 10.0,),
//                   Text('L&D Manager',style: TextStyle(color: Colors.lightBlue,
//                       fontWeight: FontWeight.bold,fontSize: 25.0),),
//                   SizedBox(height: 10.0,),
//                   Text('Expert Email',style: TextStyle(
//                       color: Colors.lightBlue,
//                       fontSize: 20.0,
//                       fontWeight: FontWeight.normal
//                   ),),
//                   Row(
//                     children: [
//                       Icon(Icons.email_outlined),
//                       SizedBox(height:10.0),
//                       Text('razaksrmd@gmail.com',style: TextStyle(color: Colors.lightBlue,
//                           fontWeight: FontWeight.bold,fontSize: 25.0),),
//                     ],
//                   )
//                 ],
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
