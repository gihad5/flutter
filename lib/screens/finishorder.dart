import 'package:flutter/material.dart';
import 'package:ordering_food/screens/mainscreen.dart';

class FinishScreen extends StatefulWidget{
@override
_FinishScreenState createState() => _FinishScreenState();
}
  class _FinishScreenState extends State<FinishScreen>{
     void initState()
  {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
    body: ListView(
          padding: EdgeInsets.only(top:50.0,left:20.0,right:20.0),
          children :<Widget>[
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Order Done !" ,style:TextStyle(color:Colors.orange,fontSize: 20,fontWeight: FontWeight.bold) ),
                  Text("Thank You" ,style:TextStyle(color:Colors.orange,fontSize: 20,fontWeight: FontWeight.bold) ),
                  Text("I hope you like it", style:TextStyle(color:Colors.black,fontSize: 30,fontWeight: FontWeight.bold) ),
                ],
              ),
              Icon(Icons.notifications_none,size: 40,color: Theme.of(context).primaryColor,),
               
            ],
            ),
             SizedBox(height:30.0),
            RaisedButton(
                  
                  color: Colors.orange,
                  child: Text('Back To Home',style: TextStyle(color: Colors.white),
                             ),
                  onPressed: () async {
                    Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => MainScreen()),
                        );
                  },
                ),
    
  
            
          ],

        ),
      );

    }
  }
