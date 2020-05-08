import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xFF7F7FD5), Color(0xFF86A8E7), Color(0xFF91EAE4)],
    ).createShader(Rect.fromLTWH(0, 0.0, 200.0, 70.0));
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
        textTheme: TextTheme(
            headline6: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                foreground: Paint()..shader = linearGradient),
            subtitle2: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            )),
      ),
      home: Next(),
    );
  }
}

class Next extends StatefulWidget {
  @override
  _NextState createState() => _NextState();
}

class _NextState extends State<Next> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: bgGradient(),
        child: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                CustomBanner(),
                BookListView(
                  title: "For PotterHeads",
                  books: [
                    'hp1.jpg',
                    'hp2.jpg',
                    'hp3.jpg',
                    'hp4.jpg',
                    'hp5.jpg',
                    'hp6.jpg',
                    'hp7.jpg'
                  ],
                ),
                SizedBox(height: 20),
                BookListView(
                  title: "BestSellers",
                  books: [
                    'alchemist.jpg',
                    'fault.jpg',
                    'finding_alaska.jpg',
                    'Sherlock_Holmes.jpg'
                  ],
                ),
                SizedBox(height: 20),
                BookListView(
                  title: "More to Read",
                  books: ['subtle.jpg', 'goosebumps.jpg'],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}

class CustomBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                'Novel App',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.search,
                  size: 35,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Expanded(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      tileMode: TileMode.mirror,
                      stops: [
                        0,
                        0.5,
                        1
                      ],
                      colors: [
                        Color(0xFF7F7FD5),
                        Color(0xFF86A8E7),
                        Color(0xFF91EAE4)
                      ],),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(
                    Icons.account_circle,
                    size: 50,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.favorite,
                    size: 50,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.settings,
                    size: 50,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BookListView extends StatelessWidget {
  final String title;
  final List<String> books;

  const BookListView({this.title, this.books});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Text(
            title,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Container(
          height: 190,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: books.length,
              itemBuilder: (BuildContext context, int index) {
                return BookCard(
                  file: books[index],
                );
              }),
        )
      ],
    );
  }
}

class BookCard extends StatelessWidget {
  final String file;
  static const filePath = 'assets/images/';

  const BookCard({this.file});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.red,
        boxShadow: [
          BoxShadow(
              color: Colors.black,
              spreadRadius: 1,
              offset: Offset(4, 5),
              blurRadius: 5),
        ],
      ),
      child: Image.asset(filePath + file),
    );
  }
}

BoxDecoration bgGradient() {
  return BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          tileMode: TileMode.mirror,
          colors: [Color(0xE0EAFC), Color(0xCFDEF3)]));
}
