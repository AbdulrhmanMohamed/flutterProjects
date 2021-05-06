import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Counter(),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  var str = 'Normal TextField';
  MaterialColor color=Colors.blue;
  bool vissible=false;
  IconData passwordImage=Icons.visibility_off;

  var blue=Colors.blue;
  var black=Colors.black;
  var white=Colors.white;
  var red=Colors.red;

  var controller=TextEditingController();
  void changeTheme(){
    setState(() {
      blue= (blue==Colors.blue ? Colors.red:Colors.blue);
      red= (red==Colors.red ? Colors.blue:Colors.red);
      white=(white== Colors.white ? Colors.black : Colors.white);
      black=( black == Colors.black ? Colors.white : Colors.black);

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("learing TextField"),
        backgroundColor: color,
      ),
      body: Container(
        color: white,
       height: double.infinity,
       child: SingleChildScrollView(
         child:Column(
           children: [
             SizedBox(height: 40,),
             Container(
               margin: EdgeInsets.all(20),
               child: TextField(
                 controller: controller,
                  style: TextStyle(color:black),
                 decoration: InputDecoration(

                   fillColor:blue ,
                   filled: true,
                   enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(30),
                   ),
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(30),
                   ),
                   labelText: str,
                   labelStyle: TextStyle(fontSize:25,color: black),
                   hintText: "This is Normal TextField",
                   hintStyle: TextStyle(fontSize:25,color:white),
                 ),

               ),
             ),
             Container(
               margin: EdgeInsets.all(20),
               child: TextField(

                 style: TextStyle(color:black),
                 decoration: InputDecoration(

                   fillColor:blue ,
                   filled: true,
                   enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(30),
                   ),
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(30),
                   ),
                   labelText: "userName",
                   labelStyle: TextStyle(fontSize:25,color: black),
                   hintText: "Enter your Name",
                   hintStyle: TextStyle(fontSize:25,color:black),
                   prefixIcon: Icon(Icons.person_add),
                 ),
                 keyboardType: TextInputType.text,

               ),
             ),
             Container(
               margin: EdgeInsets.all(20),
               child: TextField(
                 style: TextStyle(color:black),
                 decoration: InputDecoration(
                   filled: true,
                   fillColor: blue,
                   border:OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                   enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                   labelText: "Email",
                   hintText: "Enter Your Email",
                   prefixIcon:Icon( Icons.alternate_email),
                   labelStyle: TextStyle(fontSize:25,color: black),
                   hintStyle: TextStyle(fontSize:25,color:black),
                 ),
                 keyboardType: TextInputType.emailAddress,
               ),
             ),
             Container(
               margin: EdgeInsets.all(20),
               child: TextField(

                 decoration: InputDecoration(
                   fillColor: blue,
                   filled: true,
                   labelText: "Password",
                   labelStyle: TextStyle(fontSize:25,color:black),
                   hintText: "Enter Your Password",
                   enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)) ,

                   prefixIcon:IconButton(
                     icon: Icon(passwordImage),
                     onPressed: (){
                       setState(() {
                         vissible= (vissible ?false:true);
                         passwordImage= (passwordImage==Icons.visibility_off ?Icons.visibility_sharp:Icons.visibility_off);
                       });
                     },
                   )

                 ),
                 obscureText: vissible,
                 keyboardType: TextInputType.visiblePassword,

               ),
             ),
            SizedBox(height: 40,),
             FloatingActionButton.extended(
                 backgroundColor: blue,
                 onPressed: changeTheme, label: Text("ChangeTheme")),
             SizedBox(height: 50,),
             TextButton(
               child:Text("getValue!",style:TextStyle(fontSize:35)),
               style: TextButton.styleFrom(
                 primary:white,
                 backgroundColor: blue,
                 padding: EdgeInsets.all(20),
                 minimumSize: Size(200,50),

               ),
               onPressed: (){
                 setState(() {
                   str=controller.text;
                 });
               },
             )
           ],
         ),

       ),
      ),

    );
  }
}
