import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Portfolio App',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ),
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/background.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Image(
                    image: AssetImage('assets/images/dp.jpg'),
                  ),
                ),
                SizedBox(
                  child: Card(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ListTile(
                            tileColor: Colors.green.shade100,
                            contentPadding: EdgeInsets.all(10),
                            title: Text(
                              'My name is Olusesan Obakunle\nI’m a Flutter Mobile Developer\nFeel free to reach out on social media @Segziloko',
                              style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            leading: Icon(
                              Icons.contact_page,
                              color: Colors.green[500],
                            ),
                          ),
                          Divider(
                            thickness: 5,
                          ),
                          ListTile(
                            tileColor: Colors.green.shade100,
                            title: Text(
                              '+2348090823500',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            leading: Icon(
                              Icons.contact_phone,
                              color: Colors.green[500],
                            ),
                          ),
                          Divider(
                            thickness: 5,
                          ),
                          ListTile(
                            tileColor: Colors.green.shade100,
                            title: Text(
                              'obakunleolusesan@gmail.com',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            leading: Icon(
                              Icons.contact_mail,
                              color: Colors.green[500],
                            ),
                          ),
                        ]),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
