final class WorkItem {
  const WorkItem(
      {required this.title, required this.description, required this.subtitle});

  final String title;
  final String subtitle;
  final String description;

  static const workItems = [
    WorkItem(
      title: "LazyPay (iOS)",
      description: "PayU Feb 2023 - Present",
      subtitle:
          "Worked on LazyPay app and PayLater SDK \n• Implemented income flow verification for users to apply for loans by leveraging BE APIs.\n• Implemented video downloading and caching feature for homepage.\n• Worked on Unit Tests to increase the code coverage.\n• Used MVVM and Builder pattern to improve the UI SDK APIs.\n• Implemented a custom TabBar in UIKit.",
    ),
    WorkItem(
      title: "JIO Design System",
      description: "August 2022 - Dec 2022",
      subtitle:
          "Worked on Jio DesignSystem (JioDS) and UI Framework Development \n• Contributed to the development of Jio DesignSystem, a UI Framework for Jio Ecosystem apps. \n• Delivered key components for JioDS, including DateInput, Toast, and Stepper. \n• Implemented a new design for the JioDS reference app, ensuring a cohesive user experience. \n• Currently creating a custom framework to enhance the interface of the JioDS Library.",
    ),
    WorkItem(
      title: "Palette Mobile App",
      description: "March 2021 - Oct 2022",
      subtitle:
          "Mobile education platform for the US education sector \n• Flutter team lead and scrum master. \n• Achieved seamless interaction between Salesforce, Firebase & Flutter. \n• Responsible for deployment to AppStore and GCP. \n• Responsible for reviewing PRs and architecture setup.",
    ),
  ];
}
