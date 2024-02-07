import 'package:flutter/material.dart';
import 'package:portfolio/modules/article_section/models/article.dart';
import 'package:portfolio/modules/article_section/widgets/article_item_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticleSection extends StatelessWidget {
  const ArticleSection({super.key});

  @override
  Widget build(BuildContext context) {
    double fixedWidth = 900.0;
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
              return GestureDetector(
                  onTap: () async {
                    final url = Uri.parse(articles[index].link);
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url, webOnlyWindowName: '_blank');
                    }
                  },
                  child: ArticleItemWidget(article: articles[index]));
            },
          ),
        ),
      ),
    );
  }
}
