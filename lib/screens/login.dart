import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:ordering_food/screens/register.dart';
import 'package:ordering_food/screens/myapp.dart';
class LoginScreen extends StatefulWidget{
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  void initState()
  {
    super.initState();
  }


  /*final _formkey = GlobalKey<FormState>();

  TextEditingController _emailcontroller = TextEditingController();

  TextEditingController _passwordcontroller = TextEditingController();

  @override
  void dispose()
  {
    _emailcontroller.dispose();

    _passwordcontroller.dispose();

    super.dispose();
  }*/

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
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
      body: Container(
        padding: EdgeInsets.all(16),
        child: Form(
         //   key: _formkey,
            child: Column(
              children: <Widget>[
                TextFormField(
               //   controller: _emailcontroller,
                  decoration: InputDecoration(
                    hintText: 'Email',
                  ),
                  validator: (value){
                    if(value.isEmpty){
                      return 'Please Fill Email Input';
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                 // controller: _passwordcontroller,
                  decoration: InputDecoration(
                    hintText: 'Password' ,
                  ),
                  validator: (value){
                    if(value.isEmpty){
                      return 'Please Fill Password Input';
                    }
                  },
                ),
                SizedBox(
                  height: 25,
                ),
                RaisedButton(
                  color: Colors.orange,
                  child: Text('Login',style: TextStyle(color: Colors.white),
                             ),
                  onPressed: () async {
                    Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => App()),
                        );
                  /*  if(_formkey.currentState.validate()){

                      var result = await FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailcontroller.text, password: _passwordcontroller.text);

                      if(result != null){

                        // pushReplacement

                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomeloginScreen()),
                        );
                      }else{
                        print('user not found');
                      }
                    }*/
                  },
                ),
                SizedBox(),
            Expanded(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Don't have an account?"),
                    SizedBox(width: 10.0,),
                    Expanded(child: FlatButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)
                        {
                          return RegisterScreen();
                        }),);
                      },
                      child:Text('SIGN UP',
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
            )
        ),
      ),
    );
  }



}
