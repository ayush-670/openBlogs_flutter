import 'package:flutter/material.dart';
import './authorPage.dart';

class UsersPage extends StatefulWidget {
  UsersPage();

  @override
  _UsersPageState createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 10.0, top: 10.0),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                Text('Verified',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
                SizedBox(width: 10.0),
                Text('Authors',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontSize: 25.0))
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
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
                                child: _buildFoodItem('assets/profilepic.jpeg',
                                    'Ayush Singh', 'Flutter', '4', '3.8','10+', '200+',
                                    '''Ayush is a second year IT undergraduate from Netaji Subhash Engineering college. Skills:Flutter,Data Science '''),
                                onTap: () {}),
                          ),
                          SizedBox(height: 10.0,),
                          _buildFoodItem('assets/rajwrita.jpg', 'Rajwrita Nath',
                              'Machine Learning','3','5','10+', '500+', '''Rajwrita is a member of DSC NSEC, a second year CSE undergraduate from Netaji Subhash Engineering college. Skill: machine learning, Web Development '''),
                         SizedBox(height: 10.0,),
                          _buildFoodItem('assets/babloo.png', 'Vishwajeet Raj',
                              'Web Development', '1', '4.7', '10+', '300+', '''Vishwajeet is a is a member of DSC NSEC, a second year IT undergraduate from Netaji Subhash Engineering college. Skills: Web Development, Graphics design '''),
                        ]))),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFoodItem(String imgPath, String foodName, String price, String articles, String rating, String profViews, String words, String des) {
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
                        radius: 46.0,
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => AuthorPage(
                                      foodName,imgPath,des,articles,rating,profViews,words)));

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
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold),
                          ),
                          onTap: () {
                             Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => AuthorPage(
                                      foodName,imgPath,des,articles,rating,profViews,words)));

                          },
                        ),
                      ),
                      Text(
                        price,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15.0,
                            color: Colors.grey),
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
