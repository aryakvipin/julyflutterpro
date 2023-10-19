import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: drawereg(),));
}
class drawereg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("drawereg"),),

      drawer: Drawer(
        child: ListView(
          children: [

            UserAccountsDrawerHeader(
              decoration: BoxDecoration(image:DecorationImage(image: AssetImage("assets/Iconss/new.jpg"),fit: BoxFit.fill) ),

              accountName: Text("Arya k"),
                accountEmail: ListView(
                  children: [
                    Text("fs"),
                    Row(children: [
                      Text("fgdf")
                    ],)
                  ],
                ),
              currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/Iconss/person.jpg")),
              otherAccountsPictures: [
                CircleAvatar(backgroundImage: AssetImage("assets/Iconss/person.jpg"),),
                CircleAvatar(backgroundImage: AssetImage("assets/Iconss/person.jpg"),),
              ],
            ),

          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
            ListTile(
              leading: Icon(Icons.design_services),
              title: Text("Service"),
            ),

            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("About"),
            ),
                Divider(thickness: 1,color: Colors.red,),
            Text("Profile"),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
            ),



          ],
        ),
      ),
    );
  }

}