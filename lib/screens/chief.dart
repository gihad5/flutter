import 'package:flutter/material.dart';
import 'package:ordering_food/screens/details.dart';
import 'package:ordering_food/screens/orderpage.dart';
import 'myapp.dart';



class Chief extends StatefulWidget{
@override
_ChiefState createState()=> _ChiefState();

}
class _ChiefState extends State<Chief >{
@override
Widget build(BuildContext context){

  return  Scaffold(
    appBar: AppBar(title: Text('Details Chief'),
    backgroundColor: Colors.orange,
       actions: <Widget>[
          RaisedButton(
            child: Text('Back To Home',style: TextStyle(fontSize: 18,color: Colors.white),),
            color: Colors.orange,
            onPressed: () async{
          
Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => App())
);
 }
      ),
       ],
      ),
      
    
    body: 
    
    
    
    
    ListView(
          padding: EdgeInsets.only(top:50.0,left:20.0,right:20.0),
          children :<Widget>[
            Container(
         height: 200.0,
         width: 150.0,
         decoration:BoxDecoration(
           image: DecorationImage(
             image: AssetImage("ch.webp"),
             fit: BoxFit.cover,
             

           ),
           borderRadius: BorderRadius.circular(200.0),
           boxShadow:[
              BoxShadow(
                color: Colors.black,
                blurRadius: 5.0,
                offset: Offset(0.0, 0.0)
              ), 
             ]
         ) ,
       ),
              SizedBox(height:30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  
                  Text("Mohand Mohamed" ,style:TextStyle(color:Colors.orange,fontSize: 25,fontWeight: FontWeight.bold) ),
                  Text("-Develops new ways to prepare meals.", style:TextStyle(color:Colors.black,fontSize: 14,fontWeight: FontWeight.bold) ),
                  Text("-Creativity", style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold) ),
                   Text("-Creates new culinary creations", style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold) ),
                    Text("-Diversifies foods", style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold) ),
                     
                ],
              ),
              Icon(Icons.notifications_none,size: 40,color: Theme.of(context).primaryColor,),
               
            ],
            ),
         
      
             SizedBox(height:30.0),
            RaisedButton(
                  
                  color: Colors.orange,
                  child: Text('Back to Details food',style: TextStyle(color: Colors.white),
                             ),
                  onPressed: () async {
                    Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Details()),
                        );
                  },
                ),
                
    
  
            
          ],

        
        
        
        ),
        


    );
  }
  
  }

