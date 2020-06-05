import'package:flutter/material.dart' ;
import 'package:ordering_food/screens/deleteorder.dart';
import 'homelogin.dart';
import 'orderpage.dart';
import 'deleteorder.dart';
import 'confirmorder.dart';
class MainScreen extends StatefulWidget{
@override
_MainScreenState createState() => _MainScreenState();
}
class _MainScreenState extends State<MainScreen>{
  int currentTapIndex=0;
  List<Widget> scr;
  HomeLoginScreen homeScreen;
  OrderPage orderPage;
  DeleteOrder deleteOrder;
  ConfirmOrder confirmOrder;
  
  Widget currentpage;
  @override
  void initState() {
    
    super.initState();
    homeScreen = HomeLoginScreen();
    orderPage = OrderPage();
    deleteOrder = DeleteOrder();
    confirmOrder =  ConfirmOrder();

    scr=[homeScreen,orderPage,deleteOrder,confirmOrder];

    currentpage =homeScreen;
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
              title: Text("Your Cart")),
               BottomNavigationBarItem(icon: Icon(Icons.delete),
              title: Text("delete")),
               BottomNavigationBarItem(icon: Icon(Icons.confirmation_number),
              title: Text("confirm"))

            
            ]

      ),
      body: currentpage,

    );
  }
}


