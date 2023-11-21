import 'package:flutter/material.dart';

class Drawers extends StatelessWidget {
  const Drawers({super.key});

  @override
  // This widget is the root of your application.
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
         leading: Builder(
           builder: (BuildContext context) {
           return IconButton(
        icon: const Icon(
          Icons.menu,
          color: Color.fromARGB(255, 255, 255, 255),
          size: 40, // Changing Drawer Icon Size
        ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      },
     ),
        title:const Text("Drawer"),
        ),
      body: const Center(
        child: Text(  
          'Press menu on Top left for drawer.',  
          style: TextStyle(fontSize: 20.0),  
          )  
      ),  
      drawer: Drawer(  
        child: ListView(  
          padding: EdgeInsets.zero,  
          children: <Widget>[  
            const UserAccountsDrawerHeader(  
              accountName: Text("Ahsan Ali"),  
              accountEmail: Text("ahsanalime3@gmail.com"),  
              currentAccountPicture: CircleAvatar(  
                backgroundColor: Color.fromARGB(255, 9, 62, 239),  
                child: Text(  
                  "A",  
                  style: TextStyle(fontSize: 40.0),  
                ),  
              ),  
            ),  
            ListTile(  
              leading: const Icon(Icons.home), title: const Text("Home"),  
              onTap: () {  
                Navigator.pop(context);  
              },  
            ),  
            ListTile(  
              leading: const Icon(Icons.settings), title: const Text("Settings"),  
              onTap: () {  
                Navigator.pop(context);  
              },  
            ),  
            ListTile(  
              leading: const Icon(Icons.contacts), title: const Text("Contact Us"),  
              onTap: () {  
                Navigator.pop(context);  
              },  
            ),  
          ],  
        ),  
      ), 
     );
  }
}