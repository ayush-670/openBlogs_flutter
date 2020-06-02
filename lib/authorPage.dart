import 'package:flutter/material.dart';
import './article_list.dart';

class AuthorPage extends StatefulWidget {
  final auth;
  final imgPth;
  final authDes;
  final articles;
  final rating;
  final series;
  final words;

  AuthorPage(this.auth, this.imgPth, this.authDes, this.articles, this.rating,
      this.series, this.words);

  @override
  _AuthorPageState createState() => _AuthorPageState();
}

class _AuthorPageState extends State<AuthorPage> {
  var selectedCard = 'WEIGHT';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7A9BEE),
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
        title: Text('About Author',
            style: TextStyle(
                fontFamily: 'Opensans', fontSize: 18.0, color: Colors.white)),
        centerTitle: true,
        actions: <Widget>[],
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent),
              Positioned(
                  top: 75.0,
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(45.0),
                            topRight: Radius.circular(45.0),
                          ),
                          color: Colors.white),
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width)),
              Positioned(
                top: 30.0,
                left: (MediaQuery.of(context).size.width / 2) * 0.55,
                child: Container(
                  decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 25.0,
                        spreadRadius: 5.0,
                        offset: Offset(10.0, 10.0))
                  ]),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top: 0.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(widget.imgPth),
                        radius: 86.0,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.35,
                left: 25.0,
                right: 25.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(children: <Widget>[
                      Text(widget.auth,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold)),
                      Icon(
                        Icons.verified_user,
                        color: Colors.blue,
                      ),
                      
                    ]),
                    Column(
                      children: <Widget>[
                        
                        
                        Container(
                          height: MediaQuery.of(context).size.height * 0.25,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  _buildInfoCard('ARTICLES', widget.articles),
                                  SizedBox(width: 10.0),
                                  _buildInfoCard(
                                      'RATING', widget.rating + '/5'),
                                  SizedBox(width: 10.0),
                                  _buildInfoCard(
                                      'PROFILE VIEWS', widget.series),
                                  SizedBox(width: 10.0),
                                  _buildInfoCard('WORDS', widget.words),
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                      padding: EdgeInsets.all(0.0),
                      child: InkWell(
                        onTap: () {},
                        child: FlatButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ArticlePage(widget.auth),
                              ),
                            );
                          },
                          child: Text('VIEW ARTICLES', style: TextStyle(fontFamily: 'Opensans'),),
                          color: Color(0xFF7A9BEE),
                          textColor: Colors.white,
                        ),
                      ),
                    ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(widget.authDes,
                              style: TextStyle(fontFamily: 'Opensans', )),
                        ),
                      ],
                    ),
                    
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCard(String cardTitle, String info) {
    return InkWell(
        onTap: () {
          selectCard(cardTitle);
        },
        child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeIn,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color:
                  cardTitle == selectedCard ? Color(0xFF7A9BEE) : Colors.white,
              border: Border.all(
                  color: cardTitle == selectedCard
                      ? Colors.transparent
                      : Colors.grey,
                  style: BorderStyle.solid,
                  width: 0.75),
            ),
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.3,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 15.0),
                    child: Text(cardTitle,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12.0,
                          color: cardTitle == selectedCard
                              ? Colors.white
                              : Colors.black87,
                        )),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, bottom: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(info,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 35.0,
                                color: cardTitle == selectedCard
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.bold)),
                                
                      ],
                    ),
                  )
                ])));
  }

  selectCard(cardTitle) {
    setState(() {
      selectedCard = cardTitle;
    });
  }
}
