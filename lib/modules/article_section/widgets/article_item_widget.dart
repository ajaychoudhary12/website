import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/modules/article_section/models/article.dart';
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
      padding: EdgeInsets.all(SpacingConstants.spacing30),
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            article.title,
            textAlign: TextAlign.left,
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: SpacingConstants.spacing20),
          Text(
            article.description,
            textAlign: TextAlign.left,
            style: GoogleFonts.openSans(
              color: Colors.grey[400],
              fontSize: 12,
            ),
          ),
          SizedBox(height: SpacingConstants.spacing20),
          Text(
            article.subtitle,
            textAlign: TextAlign.left,
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
