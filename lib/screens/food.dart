import 'package:flutter/material.dart';
import 'details.dart';

class BoughtFoods extends StatefulWidget{
final String id;
final String name;
final String imagepath;
final String category;
final double price;
final double discount;
final double ratings;
BoughtFoods({
  this.id,
  this.name,
  this.imagepath,
  this.category,
  this.price,
  this.discount,
  this.ratings,

}); 


  @override
  _BoughtFoodsState createState()=> _BoughtFoodsState();
}
class _BoughtFoodsState extends State<BoughtFoods>{
  @override
  
  Widget build(BuildContext context){
return Stack(
  children: <Widget>[
    Container(
      height:200.0,
      width:340.0,
      child:Image.asset(widget.imagepath, fit: BoxFit.cover,),
    ),
     Positioned(
            left: 0.0,
            bottom: 0.0,
            child: Container(
            width: 340.0,
            height: 60.0,
            
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      
                      colors: [Colors.black, Colors.black12],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      )
                      ),
            ),     
     ),
     Positioned(
       left: 10.0,
       bottom: 0.0,
       right: 10.0,
      
     
     child:Row(children: <Widget>[
      
       Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           Text(widget.name,style:TextStyle(color:Colors.white,fontSize:18.0,fontWeight: FontWeight.bold) ,  
             ),
             Row(
                children: <Widget>[
                Icon(Icons.star,color: Theme.of(context).primaryColor,size: 16.0,),
                Icon(Icons.star,color: Theme.of(context).primaryColor,size: 16.0,),
                Icon(Icons.star,color: Theme.of(context).primaryColor,size: 16.0,),
                Icon(Icons.star,color: Theme.of(context).primaryColor,size: 16.0,),
                        
         ],
       ),
       
     ],
     ),
     
     
     Column(
        
       children: <Widget>[
         Text(widget.price.toString(),style:TextStyle(fontWeight: FontWeight.bold,color: Colors.orangeAccent,))
       ]
     ),
     Spacer(),
     Column(
        
       children: <Widget>[
         InkWell(
                onTap: () async {
                    Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) =>   Details ()),
                        );
                  },
                  child:
         Text("Details",style:TextStyle(fontWeight: FontWeight.bold,color: Colors.red,))
         ),
       ]
     ),
       ],

),
     ),
  ],
);


     

  }


}

