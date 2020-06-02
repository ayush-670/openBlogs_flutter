import 'package:flutter/material.dart';
import './authorPage.dart';

class DetailPage extends StatefulWidget {
  final authImg;
  final title;
  final imgPth;
  final auth;
  final authDes;
  final articles;
  final rating;
  final series;
  final words;
  

  DetailPage(this.authImg,this.title, this.imgPth, this.auth, this.authDes,this.articles,this.rating,this.series,this.words);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35.0),
                  bottomRight: Radius.circular(35.0)),
              image: DecorationImage(
                  image: AssetImage(widget.imgPth), fit: BoxFit.cover)),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.0, left: 25.0),
          child: Row(
            children: <Widget>[
              Icon(Icons.verified_user, size: 12.0, color: Colors.grey),
              Text(
                widget.auth,
                style: TextStyle(
                    fontFamily: 'Opensans', fontSize: 12.0, color: Colors.grey),
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 25.0, top: 5.0),
            child: Column(
              children: <Widget>[
                Text(
                  widget.title,
                  style: TextStyle(
                      fontFamily: 'Opensans',
                      fontSize: MediaQuery.of(context).size.width * 0.1,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '''fhcgfdcfufgiygbkuhbkuhiohohuogukfvukhjvjv jbgvbgv ,bg chg cnh chnc hgjbv ch chb gj cv , v bc bv gh h cThe series is one of the core data structures in pandas. You think of it a cross between a list and a dictionary. The items are all stored in an order and there's labels with which you can retrieve them. An easy way to visualize this is two columns of data. The first is the special index, a lot like the dictionary keys. While the second is your actual data. It's important to note that the data column has a label of its own and can be retrieved using the .name attribute. This is different than with dictionaries and is useful when it comes to merging multiple columns of data. And we'll talk about that later on in the course.
Start transcript at 40 seconds0:40
As you might expect, you can create a series by passing in a list of values. When you do this, Pandas automatically assigns an index starting with zero and sets the name of the series to None. Let's see an example of this. First, I'll start off by importing the pandas library as pd, then let's take a look at the series object. Here you could see the documentation indicates that you can pass in some data, an index and a name. The data can be anything, that's array-like, like a list. So let's give that a try. We'll just make a list of the three of my favorite animals, a tiger, a bear and a moose. We'll see here that the pandas has automatically identified the type of the data being held in the list, in this case we passed in a list of strings and panda set the type to object.
Start transcript at 1 minute 27 seconds1:27
We don't have to use strings. If we passed in a list of whole numbers, for instance, we could see that panda sets the type to n 64. Underneath panda stores series values in a typed array using the Numpy library. This offers significant speed-up when processing data versus traditional python lists.
Start transcript at 1 minute 45 seconds1:45
There's some other typing details that exist for performance that are important to know. The most important is how Numpy and thus pandas handle missing data. In Python, we have the none type to indicate a lack of data. But what do we do if we want to have a typed list like we do in the series object?
Start transcript at 2 minutes 7 seconds2:07
Underneath, pandas does some type conversion. If we create a list of strings and we have one element, a None type, pandas inserts it as a None and uses the type object for the underlying array. If we create a list of numbers, integers or floats, and put in the None type, pandas automatically converts this to a special floating point value designated as NAN, which stands for not a number.
Start transcript at 2 minutes 30 seconds2:30
For those who might not have done scientific computing in Python before, this is a pretty important point.
Start transcript at 2 minutes 37 seconds2:37
NAN is not none and when we try the equality test, it's false.
Start transcript at 2 minutes 45 seconds2:45
It turns out that you actually can't do an equality test of NAN to itself. When you do, the answer is always false. You need to use special functions to test for the presence of not a number, such as the Numpy library is NAN.
Start transcript at 3 minutes 0 seconds3:00
We'll come back to this later in the assignment, but keep in mind when you see NAN, it's meaning is similar to none, but it's a numeric value and it's treated differently for efficiency reasons. Let's talk more about how pandas' series can be created. While my list of animals might be a common way to create some play data, often you have label data that you want to manipulate. A series can be created from dictionary data. If you do this, the index is automatically assigned to the keys of the dictionary that you provided and not just incrementing integers. Here's an example using some data from Wikipedia on official national sports. When we create the series, we see that, since it was string data, panda set the data type of the series to object. We set the list of the countries as the value of the series and that the index values can be set to the keys from our dictionary.
Start transcript at 3 minutes 47 seconds3:47
Once the series has been created, we can get the index object using the index attribute. You could also separate your index creation from the data by passing in the index as a list explicitly to the series.
Start transcript at 3 minutes 59 seconds3:59
So what happens if your list of values in the index object are not aligned with the keys in your dictionary for creating the series? Well, pandas overrides the automatic creation to favor only and all of the indices values that you provided. So it will ignore it from your dictionary, all keys, which are not in your index, and pandas will add non type or NAN values for any index value you provide, which is not in your dictionary key list. In this example, we pass in a dictionary of four items but only two are preserved in the series object because of the index list. We see that hockey has been added but since it's also in the index list, it has no value associated with it.
Start transcript at 4 minutes 40 seconds4:40
So that's how we create a series. In the next class, we'll dig deeper and look at how we get data out of the series.
The series is one of the core data structures in pandas. You think of it


The DataFrame data structure is the heart of the Panda's library. It's a primary object that you'll be working with in data analysis and cleaning tasks.
Start transcript at 17 seconds0:17
The DataFrame is conceptually a two-dimensional series object, where there's an index and multiple columns of content, with each column having a label. In fact, the distinction between a column and a row is really only a conceptual distinction. And you can think of the DataFrame itself as simply a two-axes labeled array.
Start transcript at 36 seconds0:36
You can create a DataFrame in many different ways, some of which you might expect. For instance, you can use a group of series, where each series represents a row of data. Or you could use a group of dictionaries, where each dictionary represents a row of data.
Start transcript at 50 seconds0:50
Let's take a look at an example. I'm going to create three purchase order records as series objects for a sort of fictional store. Each series has a name of a customer, the string which describes the item being purchased, and the cost of the items. I like dogs, so I'll purchase a bunch of dog food. Kevin Cullens Thompson, the instructor for the third course in the series, he seems more like a cat man to me, so I'll have him purchase some kitty litter. And I think Vinod, who teaches the fourth course in this series, is more of a bird man, so I'll add some bird seed there.
Start transcript at 1 minute 21 seconds1:21
Then we'll feed this into the DataFrame as the first argument and set index values indicating which store where each purchase was done. You'll see that when we print out a DataFrame, the Jupiter notebook's trying to pretty it up a bit, and print it out as a table, which is nice.
Start transcript at 1 minute 36 seconds1:36
Similar to the series, we can extract data using the iLock and Lock attributes. Because the DataFrame is two-dimensional, passing a single value to the lock indexing operator will return series if there's only one row to return.
Start transcript at 1 minute 50 seconds1:50
In this example, if we wanted to select data associated with Store 2, we would just query the lock attribute with one parameter.
Start transcript at 1 minute 57 seconds1:57
You'll note that the name of the series is returned as the row index value, while the column name is included in the output as well.
Start transcript at 2 minutes 4 seconds2:04
We can check the data type of the return using the python type function. It's important to remember that the indices and column names along either axes, horizontal or vertical, could be non-unique. For instance, in this example, we see two purchase records for Store 1 as different rows. If we use a single value with the DataFrame lock attribute, multiple rows of the DataFrame will return, not as a new series, but as a new DataFrame.
Start transcript at 2 minutes 32 seconds2:32
For instance, if we query for Store 1 records, we see that Chris and Kevin both shop at the same pets supply store. One of the powers of the Panda's DataFrame is that you can quickly select data based on multiple axes. For instance, if you wanted to just list the costs for Store 1, you would supply two parameters to .log, one being the row index and the other being the column name. If we're only interested in Store 1 costs, we could write this as df.lock('Store 1', 'Cost').
Start transcript at 3 minutes 1 second3:01
What if we just wanted to do column selection and just get a list of all of the costs? Well, there's a couple of options. First, you can get a transpose of the DataFrame, using the capital T attribute, which swaps all of the columns and rows. This essentially turns your column names into indices. And we can then use the .lock method. This works, but it's pretty ugly.
Start transcript at 3 minutes 22 seconds3:22
Since iloc and loc are used for row selection, the Panda's developers reserved indexing operator directly on the DataFrame for column selection. In a Panda's DataFrame, columns always have a name. So this selection is always label based, not as confusing as it was when using the square bracket operator on the series objects. For those familiar with relational databases, this operator is analogous to column projection.
Start transcript at 3 minutes 48 seconds3:48
Finally, since the result of using the indexing operators, the DataFrame or series, you can chain operations together. For instance, we could have rewritten the query for all Store 1 costs as df.loc('Store 1', 'Cost').
Start transcript at 4 minutes 2 seconds4:02
This looks pretty reasonable and gets us the result we wanted. But chaining can come with some costs and is best avoided if you can use another approach. In particular, chaining tends to cause Pandas to return a copy of the DataFrame instead of a view on the DataFrame. For selecting a data, this is not a big deal, though it might be slower than necessary. If you are changing data though, this is an important distinction and can be a source of error.
Start transcript at 4 minutes 27 seconds4:27
Here's another method. As we saw, .loc does row selection, and it can take two parameters, the row index and the list of column names. .loc also supports slicing. If we wanted to select all rows, we can use a column to indicate a full slice from beginning to end. And then add the column name as the second parameter as a string. In fact, if we wanted to include multiply columns, we could do so in a list. And Pandas will bring back only the columns we have asked for.
Start transcript at 4 minutes 54 seconds4:54
Here's an example, where we ask for all of the name and cost values for all stores using the .loc operator.
Start transcript at 5 minutes 2 seconds5:02
So that's selecting and projecting data from a DataFrame based on row and column labels. The key concepts to remember are that the rows and columns are really just for our benefit. Underneath this is just a two axes labeled array, and transposing the columns is easy.
Start transcript at 5 minutes 16 seconds5:16
Also, consider the issue of chaining carefully, and try to avoid it, it can cause unpredictable results. Where your intent was to obtain a view of the data, but instead Pandas returns to you a copy. In the Panda's world, friends don't let friends chain calls. So if you see it, point it out, and share a less ambiguous solution.
Start transcript at 5 minutes 34 seconds5:34
Now, before we leave the discussion of accessing data in DataFrames, let's talk about dropping data.
Start transcript at 5 minutes 41 seconds5:41
It's easy to delete data in series and DataFrames, and we can use the drop function to do so. This function takes a single parameter, which is the index or roll label, to drop. This is another tricky place for new users to pad this. The drop function doesn't change the DataFrame by default. And instead, returns to you a copy of the DataFrame with the given rows removed. We can see that our original DataFrame is still intact. Let's make a copy with the copy method and do a drop on it instead. This is a very typical pattern in Pandas, where in place changes to a DataFrame are only done if need be, usually on changes involving indices. So it's important to be aware of.
Start transcript at 6 minutes 21 seconds6:21
Drop has two interesting optional parameters. The first is called in place, and if it's set to true, the DataFrame will be updated in place, instead of a copy being returned. The second parameter is the axes, which should be dropped. By default, this value is 0, indicating the row axes. But you could change it to 1 if you want to drop a column.
Start transcript at 6 minutes 42 seconds6:42
There is a second way to drop a column, however. And that's directly through the use of the indexing operator, using the del keyword.
Start transcript at 6 minutes 50 seconds6:50
This way of dropping data, however, takes immediate effect on the DataFrame and does not return a view.
Start transcript at 6 minutes 56 seconds6:56
Finally, adding a new column to the DataFrame is as easy as assigning it to some value. For instance, if we wanted to add a new location as a column with default value of none, we could do so by using the assignment operator after the square brackets. This broadcasts the default value to the new column immediately.
 ''',
                      textAlign: TextAlign.left,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Align(alignment: Alignment.center,child: 
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width*0.2,
            ),
            Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    height: 50.0,
                    width: 200.0,
                    
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),color: Colors.deepOrange, boxShadow: [BoxShadow(
                       color:Colors.grey,blurRadius: 25.0, spreadRadius: 5.0, offset: Offset(10.0,10.0)
                    )] ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left:45.0, top: 20.0),
                  child: InkWell(onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => AuthorPage(
                                      widget.auth,widget.authImg,widget.authDes,widget.articles,widget.rating,widget.series,widget.words)));
                  } ,child:
                Align(alignment: Alignment.center,child:
                        
                        Text('About Author', textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Opensans', fontSize: 20.0, color: Colors.white),),
                  
                ),),),
              ]
            ),
            
          ],
        ),),
      ],
    ));
  }
}
