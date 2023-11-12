import 'package:flutter/material.dart';
import 'Expert.dart';

class ExpertCard extends StatelessWidget {

  Expert expert;
  ExpertCard(this.expert);

  @override
  Widget build(BuildContext context) {
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
}
