import 'package:flutter/material.dart';
class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('FOOD',
                    style:TextStyle(
                      fontFamily:'Lobster',
                      fontSize:40.0,
                      fontWeight:FontWeight.bold,
                      color:Colors.white,
                    ) ,
                    ),
      ),
      body: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('WELCOME!',
          style: TextStyle(
            fontSize: 50,
            
          ),),
          SizedBox(height: 10,),
          TextField(
            style: TextStyle(
              fontSize:18,
              color: Colors.black54,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.yellow[100],
                hintText: 'username',
                focusedBorder:OutlineInputBorder(
                  borderSide:BorderSide(color: Colors.yellow[200]),
                  borderRadius: BorderRadius.circular(15),
                ) ,
                enabledBorder: UnderlineInputBorder(
                  borderSide:BorderSide(color: Colors.yellow[200]),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
          ),
          SizedBox(height: 10,),
         TextField(
           obscureText: true,
            style: TextStyle(
              fontSize:18,
              color: Colors.black54,
              ),
              decoration: InputDecoration(
        
                filled: true,
                fillColor: Colors.yellow[100],
                hintText: 'Password',
                focusedBorder:OutlineInputBorder(
                  borderSide:BorderSide(color: Colors.yellow[200]),
                  borderRadius: BorderRadius.circular(15),
                ) ,
                enabledBorder: UnderlineInputBorder(
                  borderSide:BorderSide(color: Colors.yellow[200]),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
          ),
          SizedBox(height: 10,),
           TextField(
            style: TextStyle(
              fontSize:18,
              color: Colors.black54,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.yellow[100],
                hintText: 'phone',
                focusedBorder:OutlineInputBorder(
                  borderSide:BorderSide(color: Colors.yellow[200]),
                  borderRadius: BorderRadius.circular(15),
                ) ,
                enabledBorder: UnderlineInputBorder(
                  borderSide:BorderSide(color: Colors.yellow[200]),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
          ),
          SizedBox(height: 10,),
           TextField(
            style: TextStyle(
              fontSize:18,
              color: Colors.black54,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.yellow[100],
                hintText: 'gmail',
                focusedBorder:OutlineInputBorder(
                  borderSide:BorderSide(color: Colors.yellow[200]),
                  borderRadius: BorderRadius.circular(15),
                ) ,
                enabledBorder: UnderlineInputBorder(
                  borderSide:BorderSide(color: Colors.yellow[200]),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
          ),
          SizedBox(height: 20,),
          FlatButton(onPressed:(){}, 
          child: Text('Sign up',
          style: TextStyle(
            fontSize:20,
          ),
          ),
          shape: OutlineInputBorder(
            borderSide:BorderSide(color: Colors.yellow[200]),
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.all(15),
          textColor: Colors.black,
          splashColor: Colors.black,
          ),
        ],
      ),
    );
  }
}