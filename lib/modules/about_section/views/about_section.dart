import 'package:flutter/material.dart';
import 'package:portfolio/modules/about_section/models/social_media_link.dart';
import 'package:portfolio/modules/common/colors/color_constants.dart';
import 'package:portfolio/modules/common/fonts/font_constants.dart';
import 'package:portfolio/modules/common/spacing/spacing_constants.dart';
import 'package:url_launcher/url_launcher.dart';

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
        child: SingleChildScrollView(
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
                    SizedBox(height: SpacingConstants.spacing20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (final socialMediaLink
                            in SocialMediaLink.socialMediaLinks)
                          Container(
                            margin: const EdgeInsets.only(
                              right: SpacingConstants.spacing40,
                            ),
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () async {
                                  final url = Uri.parse(socialMediaLink.link);
                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url,
                                        webOnlyWindowName: '_blank');
                                  }
                                },
                                child: Image.asset(
                                  'images/${socialMediaLink.imageName}',
                                  width: _imageSize30,
                                  height: _imageSize30,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )
                      ],
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
                        _techStackImage(
                          imageName: 'swift.png',
                          imageSize: _imageSize90,
                        ),
                        Spacer(),
                        _techStackImage(
                          imageName: 'flutter.jpeg',
                          imageSize: _imageSize90,
                        ),
                        Spacer(),
                        _techStackImage(
                          imageName: 'vapor.png',
                          imageSize: _imageSize90,
                        ),
                        Spacer(flex: 2),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _techStackImage({
    required String imageName,
    double? imageSize,
    double? imageWidth,
    double? imageHeight,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.asset(
        'images/$imageName',
        width: imageWidth ?? imageSize,
        height: imageHeight ?? imageSize,
        fit: BoxFit.cover,
      ),
    );
  }

  static const _imageSize90 = 90.0;
  static const _imageSize30 = 30.0;

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
