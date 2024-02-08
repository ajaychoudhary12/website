import 'package:flutter/material.dart';
import 'package:portfolio/modules/common/fonts/font_constants.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Text(
        "Coming Soon.",
        style: FontConstants.baseFont.copyWith(
          fontSize: 28,
          color: Colors.white,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
