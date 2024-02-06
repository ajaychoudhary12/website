import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/modules/article_section/view/article_section.dart';
import 'package:portfolio/modules/common/colors/color_constants.dart';
import 'package:portfolio/modules/common/spacing/spacing_constants.dart';
import 'package:portfolio/modules/root_page/widgets/root_tab_bar.dart';

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
      body: Column(
        children: [
          Container(
            height: 165,
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
                  style: GoogleFonts.workSans(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: SpacingConstants.spacing30),
                Text(
                  "Swift and iOS tutorials",
                  style: GoogleFonts.openSans(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: SpacingConstants.spacing40),
                RootTabBar(controller: _tabController),
              ],
            ),
          ),
          Container(
            color: Colors.black87,
            padding: EdgeInsets.all(SpacingConstants.spacing40),
            height: MediaQuery.of(context).size.height - 165,
            child: TabBarView(
              controller: _tabController,
              children: [
                ArticleSection(),
                Text("Coming Soon."),
                Text("Coming Soon."),
                Text("Coming Soon."),
              ],
            ),
          )
        ],
      ),
    );
  }
}
