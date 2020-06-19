import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'globals.dart' as g;
import 'package:async/async.dart';
import 'food.dart';
class Category extends StatefulWidget {
  @override
  CategoryState createState() => CategoryState();
}
class CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context)
  {
    Future getMenu() async {
      var firestore=Firestore.instance;
      QuerySnapshot qn=await firestore.collection("Beverages").getDocuments();
      int l=await Firestore.instance.collection("Veg Curries").snapshots().length;
      for (int i=0;i<l;i++) {
        g.food.add(Food(qn.documents[i]['name'],qn.documents[i]['price'],qn.documents[i]['image'],1));
      }
      qn=await firestore.collection("Biriyani").getDocuments();
      l=await Firestore.instance.collection("Biriyani").snapshots().length;
      for (int i=0;i<l;i++) {
        g.food.add(Food(qn.documents[i]['name'],qn.documents[i]['price'],qn.documents[i]['image'],1));
      }
      qn=await firestore.collection("Chats").getDocuments();
      l=await Firestore.instance.collection("Chats").snapshots().length;
      for (int i=0;i<l;i++) {
        g.food.add(Food(qn.documents[i]['name'],qn.documents[i]['price'],qn.documents[i]['image'],1));
      }
      qn=await firestore.collection("Dosa").getDocuments();
      l=await Firestore.instance.collection("Dosa").snapshots().length;
      for (int i=0;i<l;i++) {
        g.food.add(Food(qn.documents[i]['name'],qn.documents[i]['price'],qn.documents[i]['image'],1));
      }
      qn=await firestore.collection("Ice creams").getDocuments();
      l=await Firestore.instance.collection("Ice creams").snapshots().length;
      for (int i=0;i<l;i++) {
        g.food.add(Food(qn.documents[i]['name'],qn.documents[i]['price'],qn.documents[i]['image'],1));
      }
      qn=await firestore.collection("Idli").getDocuments();
      l=await Firestore.instance.collection("Idli").snapshots().length;
      for (int i=0;i<l;i++) {
        g.food.add(Food(qn.documents[i]['name'],qn.documents[i]['price'],qn.documents[i]['image'],1));
      }
      qn=await firestore.collection("Milk Shakes").getDocuments();
      l=await Firestore.instance.collection("Milk Shakes").snapshots().length;
      for (int i=0;i<l;i++) {
        g.food.add(Food(qn.documents[i]['name'],qn.documents[i]['price'],qn.documents[i]['image'],1));
      }
      qn=await firestore.collection("Non-Veg Curries").getDocuments();
      l=await Firestore.instance.collection("Non-Veg Curries").snapshots().length;
      for (int i=0;i<l;i++) {
        g.food.add(Food(qn.documents[i]['name'],qn.documents[i]['price'],qn.documents[i]['image'],1));
      }
      qn=await firestore.collection("Non-Veg Starters").getDocuments();
      l=await Firestore.instance.collection("Non-Veg Starters").snapshots().length;
      for (int i=0;i<l;i++) {
        g.food.add(Food(qn.documents[i]['name'],qn.documents[i]['price'],qn.documents[i]['image'],1));
      }
      qn=await firestore.collection("Rice").getDocuments();
      l=await Firestore.instance.collection("Rice").snapshots().length;
      for (int i=0;i<l;i++) {
        g.food.add(Food(qn.documents[i]['name'],qn.documents[i]['price'],qn.documents[i]['image'],1));
      }
      qn=await firestore.collection("Roti").getDocuments();
      l=await Firestore.instance.collection("Roti").snapshots().length;
      for (int i=0;i<l;i++) {
        g.food.add(Food(qn.documents[i]['name'],qn.documents[i]['price'],qn.documents[i]['image'],1));
      }
      qn=await firestore.collection("Soups").getDocuments();
      l=await Firestore.instance.collection("Soups").snapshots().length;
      for (int i=0;i<l;i++) {
        g.food.add(Food(qn.documents[i]['name'],qn.documents[i]['price'],qn.documents[i]['image'],1));
      }
      qn=await firestore.collection("Veg Curries").getDocuments();
      l=await Firestore.instance.collection("Veg Curries").snapshots().length;
      for (int i=0;i<l;i++) {
        g.food.add(Food(qn.documents[i]['name'],qn.documents[i]['price'],qn.documents[i]['image'],1));
      }
      qn=await firestore.collection("Veg Starters").getDocuments();
      l=await Firestore.instance.collection("Veg Starters").snapshots().length;
      for (int i=0;i<l;i++) {
        g.food.add(Food(qn.documents[i]['name'],qn.documents[i]['price'],qn.documents[i]['image'],1));
      }
    }
    return Scaffold(
      appBar:AppBar(
        title:Text('Select Category',
            style:TextStyle(fontSize:20,
                fontWeight: FontWeight.bold)),
        backgroundColor: Colors.lightGreen[400],
        centerTitle: true,
      ),
      /* body:SingleChildScrollView(
    scrollDirection: Axis.vertical,
     child: Column(
children:food.map((food) => fooditem(food)).toList(),
  ),
   ),*/
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Card(
              margin:EdgeInsets.symmetric(vertical:10.0,horizontal:10.0),
              child:new InkWell(
                onTap:() {
                 Navigator.pushNamed(context,'/beverages');
                },
                child: Container(
                  height:300,
                  width:400,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 30.0, // has the effect of softening the shadow
                        spreadRadius: 5.0, // has the effect of extending the shadow
                        offset: Offset(
                          20.0, // horizontal, move right 10
                          20.0, // vertical, move down 10
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.dstATop),
                      image: NetworkImage("https://static.independent.co.uk/s3fs-public/thumbnails/image/2018/04/09/20/istock-157528129.jpg?w968h681"),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child: Center(
                      child:Text("Beverages",
                          textAlign:TextAlign.justify,
                          style:TextStyle(
                            fontSize:35,
                            color:Colors.black,
                            fontWeight:FontWeight.bold,
                          ))),
                ),
              ),
            ),
            Card(
              margin:EdgeInsets.all(10.0),
              child:new InkWell(
                onTap:() {
                  Navigator.pushNamed(context,'/idli');
                },
                child: Container(
                  height:300,
                  width:400,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 30.0, // has the effect of softening the shadow
                        spreadRadius: 5.0, // has the effect of extending the shadow
                        offset: Offset(
                          20.0, // horizontal, move right 10
                          20.0, // vertical, move down 10
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.dstATop),
                      image: NetworkImage("https://www.thespruceeats.com/thmb/A_g1pdGtPZBJyJ9ycu18iDzegL4=/1887x1415/smart/filters:no_upscale()/idli-56a510b63df78cf772862c34.jpg"),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child:Center(
                      child: Text("Idli",
                          textAlign:TextAlign.center,
                          style:TextStyle(
                            fontSize:35,
                            color:Colors.black,
                            fontWeight:FontWeight.bold,
                          ))),
                ),
              ),
            ),
            Card(
              margin:EdgeInsets.all(5.0),
              child:new InkWell(
                onTap:() {
                  Navigator.pushNamed(context,'/dosa');
                },
                child: Container(
                  height:300,
                  width:400,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 30.0, // has the effect of softening the shadow
                        spreadRadius: 5.0, // has the effect of extending the shadow
                        offset: Offset(
                          20.0, // horizontal, move right 10
                          20.0, // vertical, move down 10
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.dstATop),
                      image: NetworkImage("https://files2.hungryforever.com/wp-content/uploads/2015/04/Featured-image-masala-dosa-recipe.jpg"),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child:Center(
                      child: Text("Dosa",
                          textAlign:TextAlign.center,
                          style:TextStyle(
                            fontSize:35,
                            color:Colors.black,
                            fontWeight:FontWeight.bold,
                          ))),
                ),
              ),
            ),
            Card(
              margin:EdgeInsets.all(10.0),
              child:new InkWell(
                onTap:() {
                  Navigator.pushNamed(context,'/soup');
                },
                child: Container(
                  height:300,
                  width:400,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 30.0, // has the effect of softening the shadow
                        spreadRadius: 5.0, // has the effect of extending the shadow
                        offset: Offset(
                          20.0, // horizontal, move right 10
                          20.0, // vertical, move down 10
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.dstATop),
                      image: NetworkImage("https://www.budgetbytes.com/wp-content/uploads/2017/09/Creamy-Garlic-Mushroom-Soup-spoon.jpg"),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child:Center(
                      child: Text("Soups",
                          textAlign:TextAlign.center,
                          style:TextStyle(
                            fontSize:35,
                            color:Colors.black,
                            fontWeight:FontWeight.bold,
                          ))),
                ),
              ),
            ),
            Card(
              margin:EdgeInsets.all(10.0),
              child:new InkWell(
                onTap:() {
                  Navigator.pushNamed(context,'/veg-starter');
                },
                child: Container(
                  height:300,
                  width:400,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 30.0, // has the effect of softening the shadow
                        spreadRadius: 5.0, // has the effect of extending the shadow
                        offset: Offset(
                          20.0, // horizontal, move right 10
                          20.0, // vertical, move down 10
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.dstATop),
                      image: NetworkImage("https://www.indianhealthyrecipes.com/wp-content/uploads/2017/03/gobi-manchurian-1-500x500.jpg"),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child:Center(
                      child: Text("Veg Starters",
                          textAlign:TextAlign.center,
                          style:TextStyle(
                            fontSize:35,
                            color:Colors.black,
                            fontWeight:FontWeight.bold,
                          ))),
                ),
              ),
            ),
            Card(
              margin:EdgeInsets.all(10.0),
              child:new InkWell(
                onTap:() {
              Navigator.pushNamed(context,'/non-veg-starter');
                },
                child: Container(
                  height:300,
                  width:400,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 30.0, // has the effect of softening the shadow
                        spreadRadius: 5.0, // has the effect of extending the shadow
                        offset: Offset(
                          20.0, // horizontal, move right 10
                          20.0, // vertical, move down 10
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.dstATop),
                      image: NetworkImage("https://i.ytimg.com/vi/EpR4Ie0DR3I/maxresdefault.jpg"),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child:Center(
                      child: Text("Non-veg Starters",
                          textAlign:TextAlign.center,
                          style:TextStyle(
                            fontSize:35,
                            color:Colors.black,
                            fontWeight:FontWeight.bold,
                          ))),
                ),
              ),
            ),
            Card(
              margin:EdgeInsets.all(10.0),
              child:new InkWell(
                onTap:() {
                  Navigator.pushNamed(context,'/rice');
                },
                child: Container(
                  height:300,
                  width:400,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 30.0, // has the effect of softening the shadow
                        spreadRadius: 5.0, // has the effect of extending the shadow
                        offset: Offset(
                          20.0, // horizontal, move right 10
                          20.0, // vertical, move down 10
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.dstATop),
                      image: NetworkImage("https://thechutneylife.com/wp-content/uploads/2017/12/Masala-Pulav-The-Chutney-Life-2.jpg"),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child:Center(
                      child: Text("Rice",
                          textAlign:TextAlign.center,
                          style:TextStyle(
                            fontSize:35,
                            color:Colors.black,
                            fontWeight:FontWeight.bold,
                          ))),
                ),
              ),
            ),
            Card(
              margin:EdgeInsets.all(10.0),
              child:new InkWell(
                onTap:() {
                Navigator.pushNamed(context,'/roti');
                },
                child: Container(
                  height:300,
                  width:400,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 30.0, // has the effect of softening the shadow
                        spreadRadius: 5.0, // has the effect of extending the shadow
                        offset: Offset(
                          20.0, // horizontal, move right 10
                          20.0, // vertical, move down 10
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.dstATop),
                      image: NetworkImage("https://thatfijitaste.com/wp-content/uploads/2017/08/roti_recipe-750x550.jpg?x10380"),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child:Center(
                      child: Text("Rotis",
                          textAlign:TextAlign.center,
                          style:TextStyle(
                            fontSize:35,
                            color:Colors.black,
                            fontWeight:FontWeight.bold,
                          ))),
                ),
              ),
            ),
            Card(
              margin:EdgeInsets.all(10.0),
              child:new InkWell(
                onTap:() {
                  Navigator.pushNamed(context,'/biriyani');
                },
                child: Container(
                  height:300,
                  width:400,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 30.0, // has the effect of softening the shadow
                        spreadRadius: 5.0, // has the effect of extending the shadow
                        offset: Offset(
                          20.0, // horizontal, move right 10
                          20.0, // vertical, move down 10
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.dstATop),
                      image: NetworkImage("https://i.ytimg.com/vi/uNXc8uH1AMo/maxresdefault.jpg"),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child:Center(
                      child: Text("Biriyani",
                          textAlign:TextAlign.center,
                          style:TextStyle(
                            fontSize:35,
                            color:Colors.black,
                            fontWeight:FontWeight.bold,
                          ))),
                ),
              ),
            ),
            Card(
              margin:EdgeInsets.all(10.0),
              child:new InkWell(
                onTap:() {
                  Navigator.pushNamed(context,'/veg-curries');
                },
                child: Container(
                  height:300,
                  width:400,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 30.0, // has the effect of softening the shadow
                        spreadRadius: 5.0, // has the effect of extending the shadow
                        offset: Offset(
                          20.0, // horizontal, move right 10
                          20.0, // vertical, move down 10
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.dstATop),
                      image: NetworkImage("https://i.pinimg.com/originals/3b/ed/40/3bed40447b0a6cf59d417df7d636cdc3.jpg"),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child:Center(
                      child: Text("Veg Curries",
                          textAlign:TextAlign.center,
                          style:TextStyle(
                            fontSize:35,
                            color:Colors.black,
                            fontWeight:FontWeight.bold,
                          ))),
                ),
              ),
            ),
            Card(
              margin:EdgeInsets.all(10.0),
              child:new InkWell(
                onTap:() {
                 Navigator.pushNamed(context,'/non-veg-curries');
                },
                child: Container(
                  height:300,
                  width:400,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 30.0, // has the effect of softening the shadow
                        spreadRadius: 5.0, // has the effect of extending the shadow
                        offset: Offset(
                          20.0, // horizontal, move right 10
                          20.0, // vertical, move down 10
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.dstATop),
                      image: NetworkImage("https://i.ndtvimg.com/i/2017-03/mutton-curry_620x350_61489775098.jpg"),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child:Center(
                      child: Text("Non-veg Curries",
                          textAlign:TextAlign.center,
                          style:TextStyle(
                            fontSize:35,
                            color:Colors.black,
                            fontWeight:FontWeight.bold,
                          ))),
                ),
              ),
            ),
            Card(
              margin:EdgeInsets.all(10.0),
              child:new InkWell(
                onTap:() {
                  Navigator.pushNamed(context,'/milk-shake');
                },
                child: Container(
                  height:300,
                  width:400,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 30.0, // has the effect of softening the shadow
                        spreadRadius: 5.0, // has the effect of extending the shadow
                        offset: Offset(
                          20.0, // horizontal, move right 10
                          20.0, // vertical, move down 10
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.dstATop),
                      image: NetworkImage("https://www.biggerbolderbaking.com/wp-content/uploads/2015/05/BBB71-Homemade-Ice-Cream-Milkshakes-Thumbnail-v.1.jpg"),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child:Center(
                      child: Text("Milk Shakes",
                          textAlign:TextAlign.center,
                          style:TextStyle(
                            fontSize:35,
                            color:Colors.black,
                            fontWeight:FontWeight.bold,
                          ))),
                ),
              ),
            ),
            Card(
              margin:EdgeInsets.all(10.0),
              child:new InkWell(
                onTap:() {
                  Navigator.pushNamed(context,'/ice-cream');
                },
                child: Container(
                  height:300,
                  width:400,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 30.0, // has the effect of softening the shadow
                        spreadRadius: 5.0, // has the effect of extending the shadow
                        offset: Offset(
                          20.0, // horizontal, move right 10
                          20.0, // vertical, move down 10
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.dstATop),
                      image: NetworkImage("https://images7.alphacoders.com/421/421534.jpg"),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child:Center(
                      child: Text("Ice creams",
                          textAlign:TextAlign.center,
                          style:TextStyle(
                            fontSize:35,
                            color:Colors.black,
                            fontWeight:FontWeight.bold,
                          ))),
                ),
              ),
            ),
            Card(
              margin:EdgeInsets.all(10.0),
              child:new InkWell(
                onTap:() {
                  Navigator.pushNamed(context,'/chat');
                },
                child: Container(
                  height:300,
                  width:400,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 30.0, // has the effect of softening the shadow
                        spreadRadius: 5.0, // has the effect of extending the shadow
                        offset: Offset(
                          20.0, // horizontal, move right 10
                          20.0, // vertical, move down 10
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.dstATop),
                      image: NetworkImage("https://mukasash.com/wp-content/blogs.dir/242/files/calcuttachats-1/CalcuttaChats_1i.jpeg"),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child:Center(
                      child: Text("Chats",
                          textAlign:TextAlign.center,
                          style:TextStyle(
                            fontSize:35,
                            color:Colors.black,
                            fontWeight:FontWeight.bold,
                          ))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}