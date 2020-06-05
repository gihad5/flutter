import 'package:flutter/material.dart';
import 'mainscreen.dart';
//import 'package:scoped_model/scoped_model.dart';
//import '../scoped_model/food_model.dart';
//import 'mainscreen.dart';


class App extends StatelessWidget {
  
//final FoodModel foodModel = FoodModel();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
     
        debugShowCheckedModeBanner: false,
        title: "Food Delivery",
        theme: ThemeData(primaryColor: Colors.blueAccent),
        //home: MainScreen(foodModel: foodModel),
        // home: AddFoodItem(),
        home: MainScreen(),
    
  

     );
  }
}
