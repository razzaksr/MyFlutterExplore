import 'package:flutter/material.dart';
import 'SkillSet.dart';
import 'Expert.dart';

void main() {
  runApp(MaterialApp(
    // stateless widget
    // home: ReadCard(),
    //stateful widget
    // home: ReadCard(),

    // Listing items from List type
    // home: IllustrationList(),

    // Listing user defined class objects from List type
    // home:IllustrationListWithCustomClass()

    // Listing expert objects as list
    home: CardDemoWithListOfCustomObjects(),
  ));
}

class CardDemoWithListOfCustomObjects extends StatefulWidget {
  const CardDemoWithListOfCustomObjects({super.key});

  @override
  State<CardDemoWithListOfCustomObjects> createState() => _CardDemoWithListOfCustomObjectsState();
}

class _CardDemoWithListOfCustomObjectsState extends State<CardDemoWithListOfCustomObjects> {

  List<dynamic> myExperts=[
    Expert("Razak Mohamed S", "L&D Manager", ['java','python','flutter'], 10),
    Expert("Rasheedha R", "Operations Head", ['Scrum Master','digital marketing'], 10),
    Expert("Annamalai S", "Lead Trainer", ['java','python','java script'], 5),
  ];

  Widget myExpertCard(expert){
    return Card(
      margin: EdgeInsets.fromLTRB(14.0, 14.0, 14.0, 0),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(expert.expertName,style: TextStyle(fontWeight: FontWeight.bold),),
                Text(expert.expertDesignation,style: TextStyle(fontStyle: FontStyle.italic),),
                Text(expert.experience.toString()+'',style: TextStyle(fontStyle: FontStyle.normal),),
              ],
            ),
            // Column(
            //   children: expert.expertSkills.map((k)=>Text(k)).toList(),
            // )
            Text(expert.expertSkills.toString()+"")
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Experts of Zealous'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        children: myExperts.map((e) => myExpertCard(e)).toList(),
      ),
    );
  }
}


class IllustrationListWithCustomClass extends StatefulWidget {
  const IllustrationListWithCustomClass({super.key});

  @override
  State<IllustrationListWithCustomClass> createState() => _IllustrationListWithCustomClassState();
}

class _IllustrationListWithCustomClassState extends State<IllustrationListWithCustomClass> {

  List<SkillSet> mySkills=[
    SkillSet("Front end", "Jinja", 25),
    SkillSet.named(techType: 'Back end',techName: 'Flask',noOfPoc: 25),
    SkillSet("Data", "Oracle", 15),
    SkillSet.named(techType: 'Back end',techName: 'DJango',noOfPoc: 20),
  ];

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
                  Text('Expert skills',style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal
                  ),),
                  SizedBox(height: 10.0,),
                  // Text('$skillsets',style: TextStyle(color: Colors.lightBlue,
                  //     fontWeight: FontWeight.bold,fontSize: 25.0),),
                  Column(
                    children: mySkills.map((e) => Text('$e',style:TextStyle(color: Colors.lightBlue,
                        fontWeight: FontWeight.bold,fontSize: 25.0),)).toList(),
                  ),
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
                  ),
                ],
              )
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            //skillsets.map((e) => Text(e)).toList();
          });
        },
        child: Icon(Icons.view_agenda,color: Colors.white70,),
        backgroundColor: Colors.lightBlue,
      ),
    );
  }
}


class IllustrationList extends StatefulWidget {
  const IllustrationList({super.key});

  @override
  State<IllustrationList> createState() => _IllustrationListState();
}

class _IllustrationListState extends State<IllustrationList> {

  List<String> skillsets=[
    'MERN Stack','Flutter Development','Java Stack','Scrum master'
  ];

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
                  Text('Expert skills',style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal
                  ),),
                  SizedBox(height: 10.0,),
                  // Text('$skillsets',style: TextStyle(color: Colors.lightBlue,
                  //     fontWeight: FontWeight.bold,fontSize: 25.0),),
                  Column(
                    children: skillsets.map((e) => Text('$e',style:TextStyle(color: Colors.lightBlue,
                    fontWeight: FontWeight.bold,fontSize: 25.0),)).toList(),
                  ),
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
                  ),
                ],
              )
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            //skillsets.map((e) => Text(e)).toList();
          });
        },
        child: Icon(Icons.view_agenda,color: Colors.white70,),
        backgroundColor: Colors.lightBlue,
      ),
    );
  }
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
