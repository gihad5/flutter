import 'package:flutter/material.dart';
import 'package:ordering_food/screens/login.dart';
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
        backgroundColor: Colors.orange[500],
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
                  borderRadius: BorderRadius.circular(10),
                ) ,
                enabledBorder: UnderlineInputBorder(
                  borderSide:BorderSide(color: Colors.yellow[200]),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
          ),
         SizedBox(height: 50.0),
            buildButtonContainer(),
            SizedBox(height: 1.0,),
            Expanded(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("If have an account?"),
                    SizedBox(width: 12.0,),
                    Expanded(child: FlatButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)
                        {
                          return LoginPage();
                        }),);
                      },
                      child:Text('Login',
                       style: TextStyle(
                       color:  Colors.blue[400],),
                    ),)
                    //Text("SIGN UP", style: TextStyle(color: Theme.of(context).primaryColor,)
                    )
],
                ),
              ),
            ),




        ],
      ),
    );
  }
  Widget buildButtonContainer(){
    return Container(
      
      height: 56.0,
      
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23.0),
        gradient: LinearGradient(
          colors: [
            Color(0xFFFB415B),
            Color(0xFFEE5623)
          ],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft
        ),
      ),
      child: Center(
        child: Text(
          "Sing Up",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );

  }
}
