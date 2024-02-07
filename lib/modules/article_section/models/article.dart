final class Article {
  const Article({
    required this.title,
    required this.description,
    required this.subtitle,
    required this.link,
  });

  final String title;
  final String subtitle;
  final String description;
  final String link;
}

final articles = [
  Article(
    title: "Understanding Factory Pattern in Swift with Example",
    description: "Published on Jan 29, 2024",
    subtitle:
        "In this article we will understand how to use Factory Pattern and avoid tight coupling in your code with Protocols.",
    link:
        "https://medium.com/@ajaychoudhary_/understanding-factory-pattern-in-swift-with-example-f9a15c0da78c",
  ),
  Article(
    title: "@State in SwiftUI",
    description: "Published on Jan 26, 2023",
    subtitle:
        "In this tutorial, we will learn about the @State keyword in SwiftUI.",
    link:
        "https://medium.com/@ajaychoudhary_/understanding-state-in-swiftui-5d8f7837b02d",
  ),
  Article(
    title: "BLoC Architecture in Flutter",
    description: "Published on Feb 7, 2022",
    subtitle:
        "Hi Flutter Folks! In this article, I want to explain to you the most popular and demanded state management solution in Flutter i.e, BLoC.",
    link:
        "https://medium.com/@ajaychoudhary_/flutter-bloc-architecture-4208bc24453f",
  ),
];
