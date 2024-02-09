import 'package:flutter/material.dart';
import 'package:portfolio/modules/common/colors/color_constants.dart';
import 'package:portfolio/modules/common/fonts/font_constants.dart';
import 'package:portfolio/modules/common/spacing/spacing_constants.dart';
import 'package:portfolio/modules/work_section/models/work_item.dart';

class WorkItemWidget extends StatelessWidget {
  const WorkItemWidget({
    super.key,
    required this.workItem,
  });

  final WorkItem workItem;

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
        border: Border.all(
          color: ColorConstants.backgroundPrimary.withOpacity(0.5),
          width: 2,
        ),
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
          Text(
            workItem.subtitle,
            textAlign: TextAlign.left,
            style: FontConstants.componentBody.copyWith(
              height: 2,
            ),
          ),
        ],
      ),
    );
  }
}
