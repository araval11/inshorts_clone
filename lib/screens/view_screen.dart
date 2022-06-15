import 'package:flutter/material.dart';
import 'package:inshorts_clone/networking/networking.dart';
import 'package:inshorts_clone/widgets/page_widget.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  String date = 'default';
  String title = 'default';
  String subtitle = 'default';
  String image =
      'https://thumbs.dreamstime.com/b/admin-sign-laptop-icon-stock-vector-166205404.jpg';
  int index = 0;

  @override
  void initState() {
    super.initState();
    gettingdata();
  }

  gettingdata() async {
    NetworkHelper networkhelper = await NetworkHelper(
        Uri.parse('https://newscues.productionserver.in/api/blog-all-list'));
    var newsdata = await networkhelper.getData();

    setState(() {
      title = newsdata['data'][1]['title'].toString();
      subtitle = newsdata['data'][1]['short_description'].toString();
      date = newsdata['data'][1]['create_date'].toString();
      image = newsdata['data'][1]['image'].toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageWidget(
        date: date,
        subtitle: subtitle,
        title: title,
        image: image,
      ),
    );
  }
}
