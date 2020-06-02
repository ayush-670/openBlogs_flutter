import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  InfoPage();

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text('About OpenBlogs',
              style: TextStyle(
                  fontFamily: 'Opensans', fontSize: 18.0, color: Colors.white)),
          centerTitle: true,
          actions: <Widget>[],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100.0),
              topRight: Radius.circular(100.0),
            ),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
                child: Text('WELCOME', style: TextStyle(fontFamily: 'Opensans', fontSize: MediaQuery.of(context).size.width*0.1, fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
                child: Text(
                  'OpenBlogs lets you deep dive into technical blogs, of the authors verified by our hardWorking team. To send your blogs or articles and to be a part of our family, mail us at singhayush160401@gmail.com',
                  style: TextStyle(
                      fontFamily: 'Opensans',
                      color: Colors.grey,
                      fontSize: MediaQuery.of(context).size.width * 0.05),
                ),
              ),
            ],
          ),
        ));
  }
}
