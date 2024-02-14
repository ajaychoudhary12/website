import 'package:flutter/material.dart';
import 'package:portfolio/modules/about_section/views/about_section.dart';
import 'package:portfolio/modules/article_section/view/article_section.dart';
import 'package:portfolio/modules/common/colors/color_constants.dart';
import 'package:portfolio/modules/common/fonts/font_constants.dart';
import 'package:portfolio/modules/common/spacing/spacing_constants.dart';
import 'package:portfolio/modules/projects_section/views/projects_section.dart';
import 'package:portfolio/modules/root_page/widgets/root_tab_bar.dart';
import 'package:portfolio/modules/work_section/views/work_section.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 4,
      vsync: this,
      animationDuration: Duration.zero,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryGrey,
      body: Column(
        children: [
          Container(
            height: 175,
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  ColorConstants.backgroundPrimary,
                  ColorConstants.backgroundSecondary,
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: SpacingConstants.spacing40),
                Text(
                  "Ajay Choudhary",
                  style: FontConstants.headline1Font,
                ),
                SizedBox(height: SpacingConstants.spacing30),
                Text(
                  "Swift and iOS tutorials",
                  style: FontConstants.componentBody.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: SpacingConstants.spacing40),
                RootTabBar(controller: _tabController),
                SizedBox(height: SpacingConstants.spacing40),
              ],
            ),
          ),
          Container(
            color: ColorConstants.primaryGrey,
            padding:
                EdgeInsets.symmetric(horizontal: SpacingConstants.spacing40),
            height: MediaQuery.of(context).size.height - 175,
            child: TabBarView(
              controller: _tabController,
              children: [
                ArticleSection(),
                WorkSection(),
                ProjectsSection(),
                AboutSection(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
