final class WorkItem {
  const WorkItem({
    required this.title,
    required this.description,
    required this.points,
  });

  final String title;
  final String description;
  final List<String> points;

  static const workItems = [
    WorkItem(
      title: "LazyPay (iOS)",
      description: "PayU Feb 2023 - Present",
      points: [
        "Implemented income flow verification for users to apply for loans by leveraging BE APIs",
        "Implemented video downloading and caching feature for homepage.",
        "Worked on Unit Tests to increase the code coverage.",
        "Used MVVM and Builder pattern to improve the UI SDK APIs.",
        "Implemented a custom TabBar in UIKit.",
      ],
    ),
    WorkItem(
      title: "JIO Design System",
      description: "August 2022 - Dec 2022",
      points: [
        "Worked on Jio DesignSystem (JioDS) and UI Framework Development",
        "Contributed to the development of Jio DesignSystem, a UI Framework for Jio Ecosystem apps.",
        "Delivered key components for JioDS, including DateInput, Toast, and Stepper.",
        "Implemented a new design for the JioDS reference app, ensuring a cohesive user experience.",
        "Currently creating a custom framework to enhance the interface of the JioDS Library.",
      ],
    ),
    WorkItem(
      title: "Palette Mobile App",
      description: "March 2021 - Oct 2022",
      points: [
        "Mobile education platform for the US education sector",
        "Flutter team lead and scrum master.",
        "Achieved seamless interaction between Salesforce, Firebase & Flutter.",
        "Responsible for deployment to AppStore and GCP.",
        "Responsible for reviewing PRs and architecture setup.",
      ],
    ),
  ];
}
