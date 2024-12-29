import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData().copyWith(scaffoldBackgroundColor: Colors.white),
        darkTheme: ThemeData().copyWith(scaffoldBackgroundColor: Colors.black),
        home: MyHomePage());
  }
}



class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});


  MySnackbar(message, context){
   return ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(content: Text(message))
   );
  }

  // final ButtonStyle buttonStyle ElevatedButton.styleFrom(
  // padding: EdgeInsets.all(20),
  // );

  @override
  Widget build(BuildContext context) {

    //Button style
    ButtonStyle buttonstyle=ElevatedButton.styleFrom(
      padding: EdgeInsets.all(10),
      backgroundColor: Colors.yellow,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
    );

  return Scaffold(
    appBar: AppBar(
      title: const Text("Masum Rashid"),
      titleSpacing:0 ,
      toolbarHeight: 60,
      centerTitle: false,
      toolbarOpacity: 1,
      elevation: 0,
      backgroundColor: Colors.yellow,
      actions: [
        IconButton(onPressed: (){MySnackbar("+8801913957187", "context");}, icon: Icon(Icons.call)),
        IconButton(onPressed: (){MySnackbar("Message", "context");}, icon: Icon(Icons.email)),
      ],
    ),
    floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        onPressed: (){
          MySnackbar("Add Now", context);
        },
        backgroundColor: Colors.yellow,
      ),
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: 0,
    backgroundColor: Colors.yellow,
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.call),label: "Call Now"),
      BottomNavigationBarItem(icon: Icon(Icons.email),label: "Email"),
    ],
      onTap: (int Index){
        if (Index==0){
          MySnackbar("Home page", context);
        }
        if (Index==1){
          MySnackbar("Call Me Now", context);
        }
        if (Index==0){
          MySnackbar("Message Me Now", context);
        }
      }
    ),
    drawer: Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.yellow),
                accountName: Text("Masum Rashid",style: TextStyle(color: Colors.black),),
                accountEmail: Text("eng.masum111@gmail.com",style: TextStyle(color: Colors.black)),
                currentAccountPicture: Image.network("https://masumrashid.com/wp-content/uploads/2024/05/Untitled-design-5.png"),

              )
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
          onTap: (){
            MySnackbar("Home", context);},),
          ListTile(
            leading: Icon(Icons.account_balance_outlined),
            title: Text("Abour"),
              onTap: (){
                MySnackbar("About", context);}),
          ListTile(
            leading: Icon(Icons.miscellaneous_services_sharp),
            title: Text("Services"),
              onTap: (){
                MySnackbar("Services", context);}),
          ListTile(
            leading: Icon(Icons.account_tree_sharp),
            title: Text("Projects"),
              onTap: (){
                MySnackbar("Projects", context);}),
          ListTile(
            leading: Icon(Icons.price_change_outlined),
            title: Text("Price"),
              onTap: (){
                MySnackbar("Price", context);}),
          ListTile(
            leading: Icon(Icons.contact_mail_rounded),
            title: Text("Contact"),
              onTap: (){
                MySnackbar("Contact", context);}),
        ],
      )
    ),
    endDrawer: Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.yellow),
                accountName: Text("Masum Rashid",style: TextStyle(color: Colors.black),),
                accountEmail: Text("eng.masum111@gmail.com",style: TextStyle(color: Colors.black)),
                currentAccountPicture: Image.network("https://masumrashid.com/wp-content/uploads/2024/05/Untitled-design-5.png"),

              )
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
          onTap: (){
            MySnackbar("Home", context);},),
          ListTile(
            leading: Icon(Icons.account_balance_outlined),
            title: Text("Abour"),
              onTap: (){
                MySnackbar("About", context);}),
          ListTile(
            leading: Icon(Icons.miscellaneous_services_sharp),
            title: Text("Services"),
              onTap: (){
                MySnackbar("Services", context);}),
          ListTile(
            leading: Icon(Icons.account_tree_sharp),
            title: Text("Projects"),
              onTap: (){
                MySnackbar("Projects", context);}),
          ListTile(
            leading: Icon(Icons.price_change_outlined),
            title: Text("Price"),
              onTap: (){
                MySnackbar("Price", context);}),
          ListTile(
            leading: Icon(Icons.contact_mail_rounded),
            title: Text("Contact"),
              onTap: (){
                MySnackbar("Contact", context);}),
        ],
      )
    ),
    body:
    // Container(
    //   height: 300,
    //   width: 300,
    //   alignment: Alignment.center,
    //   margin: EdgeInsets.fromLTRB(50, 50, 0, 0),
    //     decoration: BoxDecoration(
    //         color: Colors.green,
    //       border: Border.all(color: Colors.yellow,width: 6),
    //     ),
    // child: Text("Masum Rashid"),
    // ),

    // Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
    //   children: [
    //     Container(
    //       height: 100,
    //       width: 100,
    //       margin: EdgeInsets.fromLTRB(0, 0, 0, 0) ,
    //       child: Image.network("https://masumrashid.com/wp-content/uploads/2024/05/Untitled-design-5.png"),
    //     ),
    //   ],
    // ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(onPressed: (){MySnackbar("I Am Text Button", context);}, child: Text("Text Button")),
        ElevatedButton(onPressed: (){MySnackbar("I am Elevated Button", context);}, child: Text("Elevated Button"),style: buttonstyle,),
        OutlinedButton(onPressed: (){MySnackbar("I Am Text OutlineButton", context);}, child: Text("Outline Button"),),
      ],
    ),

  );

  }
}
