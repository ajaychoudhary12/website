import 'package:flutter/material.dart';
import 'package:portfolio/modules/article_section/models/article.dart';
import 'package:portfolio/modules/common/colors/color_constants.dart';
import 'package:portfolio/modules/common/fonts/font_constants.dart';
import 'package:portfolio/modules/common/spacing/spacing_constants.dart';

class ArticleItemWidget extends StatelessWidget {
  const ArticleItemWidget({
    super.key,
    required this.article,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: SpacingConstants.spacing20),
      padding: EdgeInsets.symmetric(
        vertical: SpacingConstants.spacing30,
        horizontal: SpacingConstants.spacing40,
      ),
      decoration: BoxDecoration(
        color: ColorConstants.secondaryGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            article.title,
            textAlign: TextAlign.left,
            style: FontConstants.baseFont.copyWith(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(height: SpacingConstants.spacing20),
          Text(
            article.description,
            textAlign: TextAlign.left,
            style: FontConstants.baseFont.copyWith(
              color: ColorConstants.captionText,
              fontSize: 14,
            ),
          ),
          SizedBox(height: SpacingConstants.spacing20),
          Text(
            article.subtitle,
            textAlign: TextAlign.left,
            style: FontConstants.baseFont.copyWith(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
