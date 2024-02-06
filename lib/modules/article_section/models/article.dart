final class Article {
  const Article({
    required this.title,
    required this.description,
    required this.subtitle,
  });

  final String title;
  final String subtitle;
  final String description;
}

final articles = [
  Article(
    title: "Understanding Factory Pattern in Swift with Example",
    description: "Published on Jan 29, 2024",
    subtitle:
        "In this article we will understand how to use Factory Pattern and avoid tight coupling in your code with Protocols ✨",
  ),
  Article(
    title: "@State in SwiftUI",
    description: "Published on Jan 26, 2023",
    subtitle:
        "In this tutorial, we will learn about the @State keyword in SwiftUI ✨",
  ),
  Article(
    title: "BLoC Architecture in Flutter",
    description: "Published on Feb 7, 2022",
    subtitle:
        "Hi Flutter Folks! In this article, I want to explain to you the most popular and demanded state management solution in Flutter i.e, BLoC ✨",
  ),
];
