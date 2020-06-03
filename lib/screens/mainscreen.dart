import'package:flutter/material.dart' ;
import 'homelogin.dart';
import 'orderpage.dart';
class MainScreen extends StatefulWidget{
  final FoodModel foodModel;
  MainScreen({
    this.foodModel

  });
@override
_MainScreenState createState() => _MainScreenState();
}
class _MainScreenState extends State<MainScreen>{
  int currentTapIndex=0;
  //List<Widget> scr;
  HomeLoginScreen homeloginScreen;
  OrderPage orderPage;
  List<Widget> scr;

  Widget currentpage;
  @override
  void initState() {
    //widget.foodModel.fetchFoods();
   
    homeloginScreen = HomeLoginScreen(widget.foodModel);
    orderPage = OrderPage();
    scr=[homeloginScreen,orderPage];

    currentpage =homeloginScreen;
     super.initState();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index)
        {
          setState(() {
            currentTapIndex=index;
            currentpage=scr[index];
          });

        },
        currentIndex: currentTapIndex,
        type: BottomNavigationBarType.fixed,
            items:<BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home),
              title: Text("Home")
              
              ),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),
              title: Text("Your Cart"))

            ]

      ),
      body: currentpage,
      

    );
  }
}
