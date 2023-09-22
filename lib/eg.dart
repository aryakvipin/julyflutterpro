import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TheNewsDemo(),
  ));
}

class TheNewsDemo extends StatefulWidget {
  const TheNewsDemo({Key? key}) : super(key: key);

  @override
  _TheNewsDemoState createState() => _TheNewsDemoState();
}

class _TheNewsDemoState extends State<TheNewsDemo> {
  List<Map<String, dynamic>> theNews = [
    {
      'day': 'March 3',
      'articles': [
        'News Article 1',
        'News Article 2',
      ],
    },
    {
      'day': 'March 4',
      'articles': [
        'News Article 3',
      ],
    },
    {
      'day': 'March 5',
      'articles': [
        'News Article 4',
        'News Article 5',
        'News Article 6',
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: theNews.length,
        itemBuilder: (BuildContext context, int index) {
          final element = theNews[index];
          return NewsDay(
            day: element['day'],
            articles: element['articles'],
          );
        },
      ),
    );
  }
}

class NewsDay extends StatelessWidget {
  const NewsDay({
    Key? key,
    required this.day,
    required this.articles,
  }) : super(key: key);

  final String day;
  final List<String> articles;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      initiallyExpanded: true,
      title: Text(day),
      children: [
        for (final article in articles) NewsItem(article: article),
      ],
    );
  }
}

class NewsItem extends StatelessWidget {
  const NewsItem({
    Key? key,
    required this.article,
  }) : super(key: key);

  final String article;

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(article));
  }
}