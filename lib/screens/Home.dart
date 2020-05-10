import 'package:flutter/material.dart';
import 'package:ordering_food/screens/Register.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  get onpressed => null;
  @override
  Widget build(BuildContext context) {
                return Scaffold(
                  backgroundColor: Colors.black,
                  body:
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:NetworkImage('https://i.pinimg.com/564x/d4/b1/e3/d4b1e331b82ec17be6da8a2d1291df5d.jpg'),
                        fit: BoxFit.cover, )),
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child:
                              Row(
                              children: <Widget>[
                              Expanded(child:  
                              Text('FOOD',
                                style:TextStyle(
                               fontFamily:'Lobster',
                               fontSize:40.0,
                               fontWeight:FontWeight.bold,
                               color:Colors.white,
                        
                               ) ,),
                              ),
                              ],
                            ),
                            ),
                            Expanded(
                              child:Row(
                              children: <Widget>[
                                Expanded(child:  FlatButton(
                                onPressed: (){},
                                 child:Text('Log in'),
                                 splashColor: Colors.black,
                                 color:Colors.yellow,
                                 textColor: Colors.black,
                                 padding: EdgeInsets.only(right:20.0,left:20.0),
                              ),
                              ),
                               Expanded(
                                 child:  FlatButton(
                                onPressed:(){
                                  Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context)
                                  {
                                   return Register();
                                  }
                                  ),
                                  );
                                },
                                 child:Text('Sign up'),
                                 splashColor: Colors.black,
                                 color:Colors.yellow,
                                 textColor: Colors.black,
                                 padding: EdgeInsets.only(right:20.0,left:20.0),
                              ),
                              ),
                              ],
                            ),
                              )
                          ],
                        
                        ),
    
                      
                    ),
                  );
         }
  }