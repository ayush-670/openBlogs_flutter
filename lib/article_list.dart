import 'package:flutter/material.dart';
import './details.dart';
class ArticlePage extends StatefulWidget {
  final authName;

  ArticlePage(this.authName);

  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  @override
  Widget build(BuildContext context) {
    if (widget.authName == 'Ayush Singh') {
      return Scaffold(
        backgroundColor: Colors.blue,
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
          title: Text('Author Articles',
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
          child: ListView(
            primary: false,
            padding: EdgeInsets.only(left: 25.0, right: 20.0),
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(top: 45.0),
                  child: Container(
                      height: MediaQuery.of(context).size.height *0.6,
                      child: ListView(children: [
                        Padding(
                          padding: EdgeInsets.all(0.0),
                          child: InkWell(
                              child: _buildFoodItem('assets/profilepic.jpeg','assets/fishing.jpg',
                                  'Flutter UI designs Pool', 'Ayush Singh', '''Ayush is a second year IT undergraduate from Netaji Subhash Engineering college. Skills:Flutter,Data Science ''','4','3.8','10+','200+'),
                              onTap: () {}),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.all(0.0),
                          child: InkWell(
                              child: _buildFoodItem('assets/profilepic.jpeg','assets/fishing.jpg',
                                  'Flutter UI designs Pool', 'Ayush Singh', '''Ayush is a second year IT undergraduate from Netaji Subhash Engineering college. Skills:Flutter,Data Science ''','4','3.8','10+','200+'),
                              onTap: () {}),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.all(0.0),
                          child: InkWell(
                              child: _buildFoodItem('assets/profilepic.jpeg','assets/fishing.jpg',
                                  'Flutter UI designs Pool', 'Ayush Singh', '''Ayush is a second year IT undergraduate from Netaji Subhash Engineering college. Skills:Flutter,Data Science ''','4','3.8','10+','200+'),
                              onTap: () {}),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.all(0.0),
                          child: InkWell(
                              child: _buildFoodItem('assets/profilepic.jpeg','assets/fishing.jpg',
                                  'Flutter UI designs Pool', 'Ayush Singh', '''Ayush is a second year IT undergraduate from Netaji Subhash Engineering college. Skills:Flutter,Data Science ''','4','3.8','10+','200+'),
                              onTap: () {}),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                      ]))),
            ],
          ),
        ),
      );
    } else if (widget.authName == 'Rajwrita Nath') {
      return Scaffold(
        backgroundColor: Colors.blue,
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
          title: Text('Author Articles',
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
          child: ListView(
            primary: false,
            padding: EdgeInsets.only(left: 25.0, right: 20.0),
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(top: 45.0),
                  child: Container(
                      height: MediaQuery.of(context).size.height - 200,
                      child: ListView(children: [
                        Padding(
                          padding: EdgeInsets.all(0.0),
                          child: InkWell(
                              child: _buildFoodItem('assets/rajwrita.jpg','assets/mountain.jpg',
                                  'Machine learning models', 'Rajwrita Nath', '''Rajwrita is a member of DSC NSEC, a second year CSE undergraduate from Netaji Subhash Engineering college. Skill: machine learning, Web Development ''','3','5','10+','500+'),
                              onTap: () {}),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.all(0.0),
                          child: InkWell(
                              child: _buildFoodItem('assets/rajwrita.jpg','assets/mountain.jpg',
                                  'Machine learning models', 'Rajwrita Nath', '''Rajwrita is a member of DSC NSEC, a second year CSE undergraduate from Netaji Subhash Engineering college. Skill: machine learning, Web Development ''','3','5','10+','500+'),
                              onTap: () {}),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.all(0.0),
                          child: InkWell(
                              child: _buildFoodItem('assets/rajwrita.jpg','assets/mountain.jpg',
                                  'Machine learning models', 'Rajwrita Nath', '''Rajwrita is a member of DSC NSEC, a second year CSE undergraduate from Netaji Subhash Engineering college. Skill: machine learning, Web Development ''','3','5','10+','500+'),
                              onTap: () {}),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                      ]))),
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: Colors.blue,
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
          title: Text('Author Articles',
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
          child: ListView(
            primary: false,
            padding: EdgeInsets.only(left: 25.0, right: 20.0),
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(top: 45.0),
                  child: Container(
                      height: MediaQuery.of(context).size.height - 200,
                      child: ListView(children: [
                        Padding(
                          padding: EdgeInsets.all(0.0),
                          child: InkWell( child: Container(
                              child: _buildFoodItem('assets/babloo.png','assets/kathmandu.jpg',
                                  'Get you game up with JS', 'Vishwajeet Raj', '''Vishwajeet is a member of DSC NSEC, a second year IT undergraduate from Netaji Subhash Engineering college. Skills: Web Development, Graphics design ''','1','4.7','10+','300+'),),
                              onTap: () {}),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                      ]))),
            ],
          ),
        ),
      );
    }
  }

  Widget _buildFoodItem(String authImg,String imgPath, String foodName, String authName, String authDes, String articles, String rating, String vies, String words) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(0.0),
                    child: InkWell(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(imgPath),
                        radius: MediaQuery.of(context).size.width*0.09,
                      ),
                      onTap: () {

                      },
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(0.0),
                        child: InkWell(
                          child: Text(
                            foodName,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: MediaQuery.of(context).size.width*0.045,
                                fontWeight: FontWeight.bold),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => DetailPage(
                                      authImg,foodName, imgPath, authName , '''Vishwajeet is a member of DSC NSEC, a second year IT undergraduate from Netaji Subhash Engineering college. Skills: Web Development, Graphics design ''','1','4.7','10+','300+')));
  
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
