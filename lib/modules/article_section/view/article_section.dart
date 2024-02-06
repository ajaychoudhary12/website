import 'package:flutter/material.dart';
import 'package:portfolio/modules/article_section/models/article.dart';
import 'package:portfolio/modules/article_section/widgets/article_item_widget.dart';

class ArticleSection extends StatelessWidget {
  const ArticleSection({super.key});

  @override
  Widget build(BuildContext context) {
    double fixedWidth = 850.0;
    final screenWidth = MediaQuery.of(context).size.width;

    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        width: screenWidth > fixedWidth ? fixedWidth : screenWidth,
        child: SizedBox(
          width: fixedWidth,
          child: ListView.builder(
            itemCount: articles.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ArticleItemWidget(article: articles[index]);
            },
          ),
        ),
      ),
    );
  }
}
