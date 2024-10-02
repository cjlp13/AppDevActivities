import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.cyan[800],
        title: Text("MY CV", style: TextStyle(color: Colors.white),),
      ),

      drawer: Drawer(
        backgroundColor: Colors.cyan[50],
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.cyan[800],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    spreadRadius: 4,
                    blurRadius: 4,
                    offset: Offset(0, 1),
                  ),],
              ),
                child: Text(
                  "CV Sections",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    letterSpacing: 0,
                  ),),
            ),

            ListTile(
              leading: Icon(Icons.school_rounded),
              title: Text("E D U C A T I O N"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.account_tree_rounded),
              title: Text("S K I L L S"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.cases_rounded),
              title: Text("P R O J E C T S"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.stars_rounded),
              title: Text("E X P E R I E N C E"),
            ),
          ],
        ),
      ),

      body: Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Colors.lightBlue[100],
                child: Text(
                  "JP",
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 70
                  ),),
              ),
            ),
          ),

          SizedBox(height: 10,),
          Text("Justine Padua", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,)),

          SizedBox(height: 1.5,),
          Text("+63 916 578 1497", style: TextStyle(fontSize: 20, color: Colors.grey[600])),
          Text("padua.chrisjustine13@gmail.com", style: TextStyle(fontSize: 20, color: Colors.grey[600])),

          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Container(
              height: 150,
              width: 335,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Professional Goal",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(top: BorderSide(width: 1, color: Colors.white30), right: BorderSide(width: 1, color: Colors.white30), bottom: BorderSide(width: 1, color: Colors.white30), left: BorderSide(width: 1, color: Colors.white30), ),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 5,
                offset: Offset(0, 2),
                ),],
              ),
            ),
          )
        ],
      )
    );
  }
}