import 'package:flutter/material.dart';
import 'package:portfolio/modules/common/colors/color_constants.dart';
import 'package:portfolio/modules/common/fonts/font_constants.dart';
import 'package:portfolio/modules/common/spacing/spacing_constants.dart';
import 'package:portfolio/modules/work_section/models/work_item.dart';
import 'package:super_bullet_list/bullet_list.dart';

class WorkItemWidget extends StatelessWidget {
  const WorkItemWidget({
    super.key,
    required this.workItem,
  });

  final WorkItem workItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: SpacingConstants.spacing40),
      padding: EdgeInsets.symmetric(
        vertical: SpacingConstants.spacing30,
        horizontal: SpacingConstants.spacing40,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorConstants.backgroundPrimary,
          width: 2,
        ),
        color: ColorConstants.secondaryGrey,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[800] ?? Colors.red,
            offset: Offset(1.0, 1.0),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            workItem.title,
            textAlign: TextAlign.left,
            style: FontConstants.componentTitle,
          ),
          SizedBox(height: SpacingConstants.spacing20),
          Text(
            workItem.description,
            textAlign: TextAlign.left,
            style: FontConstants.componentDescription.copyWith(
              color: ColorConstants.captionText,
            ),
          ),
          SizedBox(height: SpacingConstants.spacing20),
          SuperBulletList(
            iconColor: Colors.white,
            iconSize: 10,
            crossAxisAlignment: CrossAxisAlignment.center,
            items: [
              for (final point in workItem.points)
                Text(
                  point,
                  textAlign: TextAlign.left,
                  style: FontConstants.componentBody,
                ),
            ],
          ),
        ],
      ),
    );
  }
}
