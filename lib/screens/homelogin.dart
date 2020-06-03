import 'package:flutter/material.dart';
import 'package:ordering_food/scoped_model/food_model.dart';
import 'category.dart';
import 'searchfield.dart';
import 'food.dart';
import 'fooddata.dart';
import 'foodmodel.dart';

 class HomeLoginScreen extends StatefulWidget {
   final FoodModel foodModel;
   HomeLoginScreen(this.foodModel);

    @override
    _HomeScreenState createState() => _HomeScreenState();
  }
  
  class _HomeScreenState extends State<HomeLoginScreen> {
//List<Food> _foods=foods;
@override
void initState(){
  widget.foodModel.fetchFoods();
  super.initState();
}
    final textStyle=TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,);
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
                  Text("What Would" ,style: textStyle,),
                  Text("You like to eat", style: textStyle,)
                ],
              ),
              Icon(Icons.notifications_none,size: 40,color: Theme.of(context).primaryColor,),
              
            ],
            ),
            FoodCategory(),
            SearchField(),
            SizedBox(height:20.0,),
            Column(children: widget.foodModel.foods.map(_buildFoodItems).toList(),
            
            )
          ],

        ),
      );

    }
    Widget _buildFoodItems(Food food){
      var boughtFoods = BoughtFoods(
          id:food.id,
          name: food.name,
          category: food.category,
         imagepath: ("assets/images/bur1.jpg"),
          discount: food.discount,
          price: food.price,
          ratings: food.ratings,
        );
      return Container(
        margin: EdgeInsets.only(bottom:20.0),
        child: boughtFoods,

      );
    }
  }
