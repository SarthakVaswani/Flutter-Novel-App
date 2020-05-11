import 'package:flutter/material.dart';
import 'package:ok/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'widgets.dart';

class Details_Screen extends StatelessWidget {
  static const routeName = '/details-page';
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final id = routeArgs['id'];
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Book Details', style: Theme.of(context).textTheme.headline6),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Card(
                  elevation: 10,
                  child: Hero(
                    tag: id,
                    child: Container(
                      height: 340,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(routeArgs['imageUrl']),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Text(
              routeArgs['title'],
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 16,
            ),
            FavButton(),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Card(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 14,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.account_box,
                          color: Colors.white,
                          size: 39,
                        ),
                        Text(routeArgs['author'],
                            style: Theme.of(context).textTheme.caption)
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 14,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.calendar_today,
                          size: 39,
                          color: Colors.white,
                        ),
                        Text(routeArgs['year'],
                            style: Theme.of(context).textTheme.caption)
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Text(
                routeArgs['description'],
                style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.normal, height: 1.2),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        splashColor: Colors.black,
        onTap: _launchURL,
        child: Container(
          width: 20,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              color: Colors.black),
          child: Center(
              child: Text('Read Now',
                  style: Theme.of(context).textTheme.subtitle1)),
        ),
      ),
    );
  }

  _launchURL() async {
    const url =
        'https://drive.google.com/file/d/1uohm0nAysIZO308AUFjjPlnUEMFqRhGv/view?usp=sharing';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
