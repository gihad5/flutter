import 'package:flutter/material.dart';

import 'login.dart';
class HomeloginScreen extends StatelessWidget{
   @override
  Widget build(BuildContext context){
    
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange[500],
        title: Text('FOOD',
                    style:TextStyle(
                      fontFamily:'Lobster',
                      fontSize:40.0,
                      fontWeight:FontWeight.bold,
                      color:Colors.white,
                    ) ,
                    ),
      
       actions: <Widget>[
          RaisedButton(
            child: Text('Log Out',style: TextStyle(fontSize: 18,color: Colors.white),),
            color: Colors.orange,
            onPressed: () async{
          //await FirebaseAuth.instance.signOut();
Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));

            }
      ),
       ],
      ),
      
    
    body: Container(
child: Text ('Weclome To Your Home'),
    ),

    );
  }
  
  }
