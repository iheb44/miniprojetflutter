import 'package:flutter/material.dart';
import 'DB/userdatabase.dart';

class loged extends StatefulWidget {
  @override
  State<loged> createState() => _loged();
}

class _loged extends State<loged> {
  final _formKey = GlobalKey<FormState>();

  String _username = "";
  String phone = "";
  String password = "";
  int inser = 1;

  @override
  Widget build(BuildContext context) {
    Future<List> ar() {
      return userDatabase.instance.getAllComponents();
    }
    return Scaffold(
        appBar: AppBar(
          // automaticallyImplyLeading: false,
          //backgroundColor: Colors.teal,
          title: Text("components list"),
        ),
        body:
            Column(children: [
              FutureBuilder(
                future: ar(),
                builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
                  if (snapshot.hasData) {
                    List ls = snapshot.data!;
                    List ar = [];
                    ls.forEach((element) {
                      ar.add(element);
                    });


                        return ListView.builder(
                            itemCount: ar.length,
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return ListTile(
                                  trailing: TextButton(
                                    style: ButtonStyle(
                                      foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                                    ),
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/order',);
                                    },
                                    child: Text('borrow'),
                                  ),
                                title: Text('name :  ${ar[index]['name']}'),
                              );
                            });
                  }
                  return Text("erro");
                },
              ),
          TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              child: Text("logout"))
        ]),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('componentsType'),
                onTap: () {
                  Navigator.pushNamed(context, '/componentsType');
                },
              ),
              ListTile(
                title: const Text('components'),
                onTap: () {
                  Navigator.pushNamed(context, '/components');
                },
              ),
            ],
          ),
        ));
  }
}
