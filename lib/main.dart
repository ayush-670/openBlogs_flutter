import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';
import './details.dart';
import './info.dart';
import './verified_users.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Open Blogs',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  @override
  Widget build(BuildContext context) {
    final queryData = MediaQuery.of(context);
    return Scaffold(
        bottomNavigationBar: PreferredSize(
          preferredSize: Size(double.infinity, 5),
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(color: Colors.white, spreadRadius: 5, blurRadius: 2)
            ]),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.07,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(0))),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    Padding(padding: EdgeInsets.all(0.0),child: InkWell(onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => UsersPage(
                                      )));
                    },child:
          
                    Icon(
                      Icons.supervised_user_circle,
                      
                      size: 30.0,
                    ),),),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.12,
                    ),
                    Padding(
                      padding: EdgeInsets.all(0.0),
                      child: InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Contact App developer?'),
                                  content: Text(
                                      'Mail our App developer for suggestions or feedbacks?'),
                                  actions: <Widget>[
                                    FlatButton(
                                      onPressed: () async {
                                        final url =
                                            'mailto:singhayush160401@gmail.com';
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        } else {
                                          throw ' Could not launch!';
                                        }
                                      },
                                      child: Text(
                                        'Yes',
                                        style: TextStyle(
                                            color: Colors.deepOrange,
                                            fontFamily: 'Opensans'),
                                      ),
                                    ),
                                    FlatButton(
                                      onPressed: () =>
                                          Navigator.of(context).pop(),
                                      child: Text(
                                        'No',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontFamily: 'Opensans'),
                                      ),
                                    ),
                                  ],
                                );
                              });
                        },
                        child: Icon(
                          Icons.mail_outline,
                          size: 30.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.12,
                    ),
                    Padding(
                      padding: EdgeInsets.all(0.0),
                      child: InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Share App?'),
                                  content: Text(
                                      'Share App with your friends, or family?'),
                                  actions: <Widget>[
                                    FlatButton(
                                      onPressed: () {
                                        Share.share(
                                            'check out my zz',
                                            subject: 'Look what I made!');
                                      },
                                      child: Text(
                                        'Yes',
                                        style:
                                            TextStyle(color: Colors.deepOrange),
                                      ),
                                    ),
                                    FlatButton(
                                      onPressed: () =>
                                          Navigator.of(context).pop(),
                                      child: Text(
                                        'Back',
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                    )
                                  ],
                                );
                              });
                        },
                      
                        child: Icon(
                          Icons.share,
                          size: 30.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.12,
                    ),
                    Padding(padding: EdgeInsets.all(0.0),
                    child:InkWell(
                      onTap: (){
                         Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => InfoPage()));
                      },
                      child: 
                    Icon(
                      Icons.info,
                      size: 30.0,
                    ),),),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: ListView(children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 55.0, left: 15.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(decoration: BoxDecoration(shape: BoxShape.circle,boxShadow:  [BoxShadow(
                      color:Colors.grey,blurRadius: 25.0, spreadRadius: 5.0, offset: Offset(10.0,10.0)
                    )] ), child:
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(top: 0.0),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/logo2.jpg'),
                              radius: 70.0,
                            ),
                          ),
                        ),),
                        Padding(
                          padding: EdgeInsets.only(bottom: 0.0),
                          child: Column(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.topRight,
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        SizedBox(
                                          width: 35.0,
                                        ),
                                        Text(
                                          'Read',
                                          style: TextStyle(
                                            fontFamily: 'Opensans',
                                            fontSize: 36.0,
                                            color: Colors.black45,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 11.0,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        SizedBox(
                                          width: 27.0,
                                        ),
                                        Text(
                                          'Learn',
                                          style: TextStyle(
                                              fontFamily: 'Opensans',
                                              fontSize: 36.0,
                                              color: Colors.black54,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 11.0,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          'Develop',
                                          style: TextStyle(
                                              fontFamily: 'Opensans',
                                              fontSize: 36.0,
                                              color: Colors.deepOrange,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 11.0,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Align(
                child: Padding(
                  padding: EdgeInsets.only(left: 30.0),
                  child: Text(
                    'Articles for you:',
                    style: TextStyle(
                        fontFamily: 'Opensans',
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                ),
                alignment: Alignment.centerLeft,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Container(
                    height: 300.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(0.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => DetailPage(
                                      'assets/rajwrita.jpg','Machine learning models', 'assets/mountain.jpg', 'Rajwrita Nath', '''Rajwrita is a member of DSC NSEC, a second year CSE undergraduate from Netaji Subhash Engineering college. Skill: machine learning, Web Development ''','3','5','10+','500+')));
                            },
                            child: _buildCard(
                                'Machine learning models',
                                '4',
                                'assets/mountain.jpg',
                                'Rajwrita Nath',
                                'assets/rajwrita.jpg'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(0.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => DetailPage(
                                      'assets/babloo.png','Get your game up with JS', 'assets/kathmandu.jpg', 'Vishwajeet Raj' , '''Vishwajeet is a member of DSC NSEC, a second year IT undergraduate from Netaji Subhash Engineering college. Skills: Web Development, Graphics design ''','1','4.7','10+','300+')));
                            },
                            child: _buildCard(
                                'Get your game up with JS',
                                '3.5',
                                'assets/kathmandu.jpg',
                                'Vishwajeet Raj',
                                'assets/babloo.png'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(0.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => DetailPage(
                                      'assets/profilepic.jpeg','Flutter UI designs Pool', 'assets/fishing.jpg', 'Ayush Singh' ,'''Ayush is a second year IT undergraduate from Netaji Subhash Engineering college. Skills:Flutter,Data Science ''','4','3.8','10+','200+')));
                            },
                            child: _buildCard(
                                'Flutter UI designs Pool',
                                '4.8',
                                'assets/fishing.jpg',
                                'Ayush Singh',
                                'assets/profilepic.jpeg'),
                          ),
                        )
                      ],
                    ),
                  )),
                  Padding(padding: EdgeInsets.all(25.0),
                  child: Divider(color:Colors.grey, ),),
                  Padding(padding: EdgeInsets.all(20.0),
                  child:Text('Copyright: Ayush Singh || 2020', textAlign: TextAlign.center,))
            ],
          ),
        ]));

    // This trailing comma makes auto-formatting nicer for build methods.
  }
    _buildCard(String title, String rating, String imgPath, String author,
      String authImg) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: InkWell(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                    image: AssetImage(imgPath), fit: BoxFit.cover),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height* 0.7,
              width: MediaQuery.of(context).size.width*0.7,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.black.withOpacity(0.4)),
            ),
            Positioned(
              top: 10.0,
              left: 10.0,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(0.0),
                    child: InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(
                                    'Verified Team rating: ' + rating + '/5'),
                                content: Text(
                                    'Our Verified Team members review each blog, and rate them accordingly.'),
                                actions: <Widget>[
                                  FlatButton(
                                    onPressed: () =>
                                        Navigator.of(context).pop(),
                                    child: Text(
                                      'Okay',
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontFamily: 'Opensans'),
                                    ),
                                  )
                                ],
                              );
                            });
                      },
                      child: Container(
                        height: 40.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.black.withOpacity(0.2),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 12.0,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                rating,
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 165.0,
              left: 10.0,
              child: Container(
                width: 150.0,
                child: Text(
                  title,
                  style: TextStyle(
                      fontFamily: 'Opensans',
                      fontSize: 17.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Positioned(
              top: 225.0,
              left: 10.0,
              child: Row(
                children: [
                  Text(
                    'By: ',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    author,
                    style: TextStyle(
                      fontFamily: 'Opensans',
                      fontSize: 15.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 40.0,
                        width: 100.0,
                      ),
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                              image: AssetImage(authImg), fit: (BoxFit.cover)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/*Padding(
      padding: EdgeInsets.all(5.0),
      child: InkWell(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width * 0.55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                    image: AssetImage('assets/mountain.jpg'), fit: BoxFit.cover),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.47,
              width: MediaQuery.of(context).size.width*0.55, */