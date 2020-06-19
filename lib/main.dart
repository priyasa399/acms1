/*import 'package:flutter/material.dart';
import 'package:async/async.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  //WidgetsFlutterBinding.ensureInitialized();
  return runApp(new MediaQuery(
      data: new MediaQueryData(), child: new MaterialApp(home: new MyApp())));
}

class MyApp extends StatelessWidget {
  final databaseReference = Firestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FireStore Demo'),
      ),
      body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              RaisedButton(
                child: Text('Create Record'),
                onPressed: () {
                  createRecord();
                },
              ),
              RaisedButton(
                child: Text('View Record'),
                onPressed: () {
                  getData();
                },
              ),
              RaisedButton(
                child: Text('Update Record'),
                onPressed: () {
                  updateData();
                },
              ),
              RaisedButton(
                child: Text('Delete Record'),
                onPressed: () {
                  deleteData();
                },
              ),
            ],
          )), //center
    );
  }

  void createRecord() async {
    await databaseReference.collection("books")
        .document("1")
        .setData({
      'title': 'Mastering Flutter',
      'description': 'Programming Guide for Dart'
    });

    DocumentReference ref = await databaseReference.collection("books")
        .add({
      'title': 'Flutter in Action',
      'description': 'Complete Programming Guide to learn Flutter'
    });
    print(ref.documentID);
  }

  void getData() {
    databaseReference
        .collection("Biriyani")
        .getDocuments()
        .then((QuerySnapshot snapshot) {
      snapshot.documents.forEach((f) => print('${f.data}}'));
    });
  }

  void updateData() {
    try {
      databaseReference
          .collection('books')
          .document('1')
          .updateData({'description': 'Head First Flutter'});
    } catch (e) {
      print(e.toString());
    }
  }

  void deleteData() {
    try {
      databaseReference
          .collection('books')
          .document('1')
          .delete();
    } catch (e) {
      print(e.toString());
    }
  }
}
*/
import 'package:flutter/material.dart';
import 'biriyani.dart';
import 'category.dart';
import 'rice.dart';
import 'dosa.dart';
import 'idli.dart';
import 'veg_starter.dart';
import 'soup.dart';
import 'veg_curries.dart';
import 'non_veg_curries.dart';
import 'non_veg_starter.dart';
import 'roti.dart';
import 'chat.dart';
import 'ice_cream.dart';
import 'beverages.dart';
import 'milkshake.dart';
import 'package:async/async.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute:'/',
      routes: <String, WidgetBuilder>{
        '/':(BuildContext context) => Category(),
        '/rice':(BuildContext context) => Rice(),
        '/biriyani':(BuildContext context) => Biriyani(),
        '/veg-starter':(BuildContext context) => Veg_Starter(),
        '/idli':(BuildContext context) => Idli(),
        '/dosa':(BuildContext context) => Dosa(),
        '/soup':(BuildContext context) => Soup(),
        '/veg-curries':(BuildContext context) => Veg_Curries(),
        '/non-veg-starter':(BuildContext context) => Non_Veg_Starter(),
        '/non-veg-curries':(BuildContext context) => Non_Veg_Curries(),
        '/milk-shake':(BuildContext context) => MilkShake(),
        '/chat':(BuildContext context) => Chat(),
        '/roti':(BuildContext context) => Roti(),
        '/beverages':(BuildContext context) => Beverages(),
        '/ice-cream':(BuildContext context) => Ice_Cream(),
        //'/signUp': (BuildContext context) => SignUpView(authFormType: AuthFormType.signUp),
        //'/signIn': (BuildContext context) => SignUpView(authFormType: AuthFormType.signIn),
        // '/home': (BuildContext context) => HomeController(),
        //'/cart': (BuildContext context) => CartPage()
      },
    );
  }
}


