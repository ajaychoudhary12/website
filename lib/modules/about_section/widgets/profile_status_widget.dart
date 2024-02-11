
import 'package:flutter/material.dart';
import 'package:portfolio/modules/common/colors/color_constants.dart';
import 'package:portfolio/modules/common/fonts/font_constants.dart';
import 'package:portfolio/modules/common/spacing/spacing_constants.dart';

class CurrentProfileStatus extends StatelessWidget {
  const CurrentProfileStatus({
    super.key,
    required this.statusText,
  });

  final String statusText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: SpacingConstants.spacing20,
      ),
      height: 30,
      decoration: BoxDecoration(
        color: ColorConstants.activeGreenSecondary,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
              color: ColorConstants.activeGreenPrimary,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          SizedBox(width: SpacingConstants.spacing20),
          Text(
            statusText,
            style: FontConstants.componentDescription.copyWith(
              color: ColorConstants.activeGreenPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
