import 'package:flutter/material.dart';
import 'package:portfolio/modules/work_section/models/work_item.dart';
import 'package:portfolio/modules/work_section/widgets/work_item_widget.dart';

class WorkSection extends StatelessWidget {
  const WorkSection({super.key});

  @override
  Widget build(BuildContext context) {
    double fixedWidth = 900.0;
    final screenWidth = MediaQuery.of(context).size.width;

    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        width: screenWidth > fixedWidth ? fixedWidth : screenWidth,
        child: ListView.builder(
          itemCount: WorkItem.workItems.length,
          itemBuilder: (context, index) {
            return WorkItemWidget(
              workItem: WorkItem.workItems[index],
            );
          },
        ),
      ),
    );
  }
}
