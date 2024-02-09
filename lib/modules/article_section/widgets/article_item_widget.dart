import 'package:flutter/material.dart';
import 'package:portfolio/modules/article_section/models/article.dart';
import 'package:portfolio/modules/common/colors/color_constants.dart';
import 'package:portfolio/modules/common/fonts/font_constants.dart';
import 'package:portfolio/modules/common/spacing/spacing_constants.dart';

class ArticleItemWidget extends StatefulWidget {
  const ArticleItemWidget({
    super.key,
    required this.article,
  });

  final Article article;

  @override
  State<ArticleItemWidget> createState() => _ArticleItemWidgetState();
}

class _ArticleItemWidgetState extends State<ArticleItemWidget> {
  var headlineColor = Colors.white;
  Border? border;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        setState(() {
          headlineColor = ColorConstants.backgroundSecondary;
          border = Border.all(
            color: ColorConstants.backgroundPrimary.withOpacity(0.5),
            width: 2,
          );
        });
      },
      onExit: (_) {
        setState(() {
          headlineColor = Colors.white;
          border = null;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: SpacingConstants.spacing20),
        padding: EdgeInsets.symmetric(
          vertical: SpacingConstants.spacing30,
          horizontal: SpacingConstants.spacing40,
        ),
        decoration: BoxDecoration(
          color: ColorConstants.secondaryGrey,
          borderRadius: BorderRadius.circular(10),
          border: border,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.article.title,
              textAlign: TextAlign.left,
              style: FontConstants.componentTitle.copyWith(
                color: headlineColor,
              ),
            ),
            SizedBox(height: SpacingConstants.spacing20),
            Text(
              widget.article.description,
              textAlign: TextAlign.left,
              style: FontConstants.componentDescription.copyWith(
                color: ColorConstants.captionText,
              ),
            ),
            SizedBox(height: SpacingConstants.spacing20),
            Text(
              widget.article.subtitle,
              textAlign: TextAlign.left,
              style: FontConstants.componentBody,
            ),
          ],
        ),
      ),
    );
  }
}
