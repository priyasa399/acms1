import 'package:flutter/material.dart';
import 'package:async/async.dart';
import 'food.dart';
import 'globals.dart' as g;
import 'package:cloud_firestore/cloud_firestore.dart';
class Beverages extends StatefulWidget {
  @override
  BeveragesState createState() => BeveragesState();
}
class BeveragesState extends State<Beverages> {
  /*List<Food> food = [ Food( 'Gobi Manchurian',120,'https://www.indianhealthyrecipes.com/wp-content/uploads/2017/03/gobi-manchurian-1-500x500.jpg'),
    Food('Hakka Noodles',165,'https://i2.wp.com/www.vegrecipesofindia.com/wp-content/uploads/2018/10/hakka-noodles-recipe-1.jpg'),
    Food('Veg Biriyani',170,'https://i0.wp.com/www.cookingfromheart.com/wp-content/uploads/2017/09/Veg-Biryani-in-Pressure-Cooker-6.jpg?resize=1024%2C680'),
    Food('Chilli aloo',145,'https://i0.wp.com/www.whatsuplife.in/kolkata/blog/wp-content/uploads/2016/08/Chilli-Potato.jpg?fit=1024%2C695&ssl=1'),
    Food('Chilli Mushroom',145,'https://i.pinimg.com/originals/29/7a/73/297a73078c85d08b44bd33239afb24de.jpg'),

  ];*/
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar:AppBar(
        title:Text('Menu',
            style:TextStyle(fontSize:20,
                fontWeight: FontWeight.bold)),
        backgroundColor: Colors.lightGreen[300],
        centerTitle: true,
      ),
      /* body:SingleChildScrollView(
    scrollDirection: Axis.vertical,
     child: Column(
children:food.map((food) => fooditem(food)).toList(),
  ),
   ),*/
      body:StreamBuilder(
          stream:Firestore.instance.collection('Beverages').snapshots(),
          builder:(context,snapshot) {
            if (!snapshot.hasData) {
              return Center(child:Text("Loading...",
                  style:TextStyle(
                    fontSize:25,
                    color:Colors.black,
                  )));
            }
            else {
              return ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot food1 = snapshot.data.documents[index];
                    g.food.add(Food(food1['name'],food1['price'],food1['image']));
                    return fooditem(food1);
                  }
              );
            }
          }
      ),
    );
  }
  Widget fooditem(food) {
    return Container(
      height:139.5,
      color:Colors.blue[300],
      child:GridView.count(
        shrinkWrap:true,
        primary:true,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount:2,
        mainAxisSpacing:0.1,
        crossAxisSpacing:0.1,
        padding: EdgeInsets.all(1.0),
        children: <Widget>[
          makeDashboardItem1(food['name'],food['image']),
          makeDashboardItem(food['name'],food['price']),
        ],
      ),
    );
  }
  Card makeDashboardItem(String name,int price)
  {
    return Card(
        clipBehavior: Clip.none,
        color:Colors.blue,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.values[0],
          mainAxisSize: MainAxisSize.values[0],
          crossAxisAlignment:CrossAxisAlignment.values[2],
          verticalDirection:VerticalDirection.down,
          children: <Widget>[
            Padding(
              padding:EdgeInsets.only(top:20.0),
            ),
            Text('$name',
                style:TextStyle(
                  fontSize:22,
                  color:Colors.white,
                )),
            Text('₹$price',
                style:TextStyle(
                  fontSize:22,
                  color:Colors.white,
                )),
            FlatButton(
              child: Text('Add',
                  style:TextStyle(
                    fontSize:22,
                  )),
              color: Colors.pink[800],
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),

              onPressed: () {},
            ),
          ],
        )
    );
  }
  Card makeDashboardItem1(String title,String image)
  {
    return Card(
      color:Colors.blue,

      child:Image(
        fit:BoxFit.cover,
        height:160,
        width:220,
        image:NetworkImage('$image'),
        alignment:Alignment.topCenter,
      ),
    );
  }
}