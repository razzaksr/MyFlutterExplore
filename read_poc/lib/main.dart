import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ReadCard(),
  ));
}

class ReadCard extends StatelessWidget {
  const ReadCard({super.key});

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
    );
  }
}
