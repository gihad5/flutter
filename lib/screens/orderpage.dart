import 'package:flutter/material.dart';
import 'ordercart.dart';
class OrderPage extends StatefulWidget{
@override
_OrderPageState createState()=> _OrderPageState();

}
class _OrderPageState extends State<OrderPage>{
@override
Widget build(BuildContext context){

  return  Scaffold(
     appBar: AppBar(
      title: Text("Your Food Card ", style: TextStyle(color:Colors.black),),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0.0,
    ) ,

  body: ListView(
    padding: EdgeInsets.symmetric(horizontal:10.0),
    scrollDirection: Axis.vertical,
    children: <Widget>[
     OrderCart(),
        //OrderCart(),
    
    ],
    ),
    bottomNavigationBar:  _buildTotalContainer(),
  );
    }
    
Widget _buildTotalContainer(){
 return Container(
   height: 220.0,
   margin: EdgeInsets.only(top: 20.0),
   padding: EdgeInsets.symmetric(horizontal:10.0),
        child:Column(
          children: <Widget>[
            /*ListTile(
              leading: Text("Cart Total",style: TextStyle(color:Colors.grey,fontSize:16.0,fontWeight:FontWeight.bold),),
              trailing: Text("70.0"),
            ),
            ListTile(
              leading: Text("Cart Total",style: TextStyle(color:Colors.grey,fontSize:16.0,fontWeight:FontWeight.bold),),
              trailing: Text("70.0"),
            ),
            ListTile(
              leading: Text("Cart Total",style: TextStyle(color:Colors.grey,fontSize:16.0,fontWeight:FontWeight.bold),),
              trailing: Text("70.0"),
            )*/
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Cart Total",style: TextStyle(color:Colors.grey,fontSize:16.0,fontWeight:FontWeight.bold),),
              
                Text("70.0",style: TextStyle(color:Colors.black,fontSize:16.0,fontWeight:FontWeight.bold),),
           

              ],
            ),
             SizedBox(height:10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Discount",style: TextStyle(color:Colors.grey,fontSize:16.0,fontWeight:FontWeight.bold),),
              
                Text("3.0",style: TextStyle(color:Colors.black,fontSize:16.0,fontWeight:FontWeight.bold),),
           

              ],
            ),
            SizedBox(height:10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Tax",style: TextStyle(color:Colors.grey,fontSize:16.0,fontWeight:FontWeight.bold),),
              
                Text("5.0",style: TextStyle(color:Colors.black,fontSize:16.0,fontWeight:FontWeight.bold),),
           

              ],
            ),
           Divider(height:20.0,color:Color(0xFFD3D3D3)),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Sub Total",style: TextStyle(color:Colors.grey,fontSize:16.0,fontWeight:FontWeight.bold),),
              
                Text("78.0",style: TextStyle(color:Colors.black,fontSize:16.0,fontWeight:FontWeight.bold),),
           

              ],
            ),
            SizedBox(height:20.0),
           /* Container(
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              decoration: BoxDecoration(
                 color: Colors.blue,
                 borderRadius: BorderRadius.circular(30.0),

              ),
              child: Center(
                child: Text("Check Out",style: TextStyle(fontSize:18.0,color:Colors.white,fontWeight:FontWeight.bold),),
              ),
            ),*/
            
          ],

        ),
      );


}
}
