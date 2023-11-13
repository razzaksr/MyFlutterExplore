import 'package:express_client/Api.dart';
import 'package:express_client/Customers.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

void main() {
  runApp(MaterialApp(
    home: Read(),
  ));
}
class Read extends StatelessWidget {
  const Read({super.key});

  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('CRUD App'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body:FutureBuilder(
        future: API.readAll(),
        builder: (BuildContext context,AsyncSnapshot snapshot){
          if(!snapshot.hasData){
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          else{
            List<Customers> myAll=snapshot.data;
            return ListView.builder(
              itemCount: myAll.length,
              itemBuilder: (BuildContext context,int index){
                // return ListTile(
                //   leading:Icon(Icons.person),
                //   title: Text(myAll[index].accHolder),
                // );
                return Card(
                  margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
                  child: ListTile(
                    onTap: (){
                      // Fluttertoast.showToast(msg: "hai");
                      Toast.show("Account Number "+myAll[index].accNumber.toString()+" BAlance is "+myAll[index].accBalance.toString(),duration: Toast.lengthLong);
                    },
                    leading: Icon(Icons.person),
                    title: Text(myAll[index].accHolder),
                  ),
                );
              },
            );
          }
        },
      )
    );
  }
}