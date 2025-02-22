import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
   List <ArticleModel> articles ;
  
  NewsListView({ required this.articles});
  @override
  Widget build(BuildContext context) {
    return  
       SliverList(
        delegate: SliverChildBuilderDelegate(
          childCount: articles.length ,
          (context, index)=>NewsTile(article: articles[index]),
          ),
    );
  }
}