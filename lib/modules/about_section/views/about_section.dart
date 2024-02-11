import 'package:flutter/material.dart';
import 'package:portfolio/modules/common/colors/color_constants.dart';
import 'package:portfolio/modules/common/fonts/font_constants.dart';
import 'package:portfolio/modules/common/spacing/spacing_constants.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    double fixedWidth = 900.0;
    final screenWidth = MediaQuery.of(context).size.width;

    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        width: screenWidth > fixedWidth ? fixedWidth : screenWidth,
        child: Column(
          children: [
            Row(
              children: [
                Container(
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
                        "Learning Server Side development using Vapor",
                        style: FontConstants.componentDescription.copyWith(
                          color: ColorConstants.activeGreenPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: SpacingConstants.spacing40),
            Container(
              margin: _verticalMargin,
              padding: _padding,
              decoration: BoxDecoration(
                color: ColorConstants.secondaryGrey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About",
                    textAlign: TextAlign.left,
                    style: FontConstants.componentTitle,
                  ),
                  SizedBox(height: SpacingConstants.spacing20),
                  Text(
                    _aboutText,
                    textAlign: TextAlign.left,
                    style: FontConstants.componentBody,
                  ),
                ],
              ),
            ),
            Container(
              margin: _verticalMargin,
              padding: _padding,
              decoration: BoxDecoration(
                color: ColorConstants.secondaryGrey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tech Stack",
                    textAlign: TextAlign.left,
                    style: FontConstants.componentTitle,
                  ),
                  SizedBox(height: SpacingConstants.spacing20),
                  Text(
                    _techStackText,
                    textAlign: TextAlign.left,
                    style: FontConstants.componentBody,
                  ),
                  SizedBox(height: SpacingConstants.spacing80),
                  Row(
                    children: [
                      Spacer(flex: 2),
                      _image('swift.png'),
                      Spacer(),
                      _image('flutter.jpeg'),
                      Spacer(),
                      _image('vapor.png'),
                      Spacer(flex: 2),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _image(String imageName) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.asset(
        'images/$imageName',
        width: _imageSize,
        height: _imageSize,
        fit: BoxFit.cover,
      ),
    );
  }

  static const _imageSize = 90.0;

  static const _verticalMargin =
      EdgeInsets.symmetric(vertical: SpacingConstants.spacing20);
  static const _padding = EdgeInsets.symmetric(
    vertical: SpacingConstants.spacing30,
    horizontal: SpacingConstants.spacing40,
  );

  static const _aboutText =
      "I'm an iOS developer who loves writing expressive and efficient code in Swift. I'm passionate about organized, documented code and developing API's that feel natural to use and easy to understand. \n\nI aim to provide valuable content, and I encourage you to reach out with any questions or feedback you may have. Your input is genuinely appreciated.";
  static const _techStackText =
      "In addition to iOS development, I possess expertise in building cross-platform applications using Flutter and have some experience with Vapor. The following are some of the programming languages and techstacks I have worked with:";
}
