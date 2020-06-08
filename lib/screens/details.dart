import 'package:flutter/material.dart';
import 'package:ordering_food/screens/orderpage.dart';
import 'myapp.dart';



class Details extends StatefulWidget{
@override
_DetailsState createState()=> _DetailsState();

}
class _DetailsState extends State<Details >{
@override
Widget build(BuildContext context){

  return  Scaffold(
    appBar: AppBar(title: Text('Details Food'),
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
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  
                  Text("Contents of the meal" ,style:TextStyle(color:Colors.orange,fontSize: 25,fontWeight: FontWeight.bold) ),
                  Text("-Potatos", style:TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold) ),
                   Text("-Pepsi", style:TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold) ),
                    Text("-Rice", style:TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold) ),
                     Text("-Vegetables salad", style:TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold) ),
                ],
              ),
              Icon(Icons.notifications_none,size: 40,color: Theme.of(context).primaryColor,),
               
            ],
            ),
           SizedBox(height:30.0),
       Container(
         height: 200.0,
         width: 150.0,
         decoration:BoxDecoration(
           image: DecorationImage(
             image: AssetImage("bur1.jpg"),
             fit: BoxFit.cover,
             

           ),
           borderRadius: BorderRadius.circular(35.0),
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
            RaisedButton(
                  
                  color: Colors.orange,
                  child: Text('Add to card',style: TextStyle(color: Colors.white),
                             ),
                  onPressed: () async {
                    Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => OrderPage()),
                        );
                  },
                ),
    
  
            
          ],

        
        
        
        ),
        


    );
  }
  
  }

