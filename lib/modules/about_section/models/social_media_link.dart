class SocialMediaLink {
  SocialMediaLink({
    required this.link,
    this.imageName,
    this.text,
  });

  final String? imageName;
  final String? text;
  final String link;

  static final socialMediaLinks = [
    SocialMediaLink(
      link: "https://www.x.com/_ajaydev",
      imageName: "twitter.png",
    ),
    SocialMediaLink(
      link: "https://www.linkedin.com/in/ajaychoudhary2848/",
      imageName: "linkedin.png",
    ),
    SocialMediaLink(
      link: "https://github.com/ajaychoudhary12",
      imageName: "github.png",
    ),
  ];
}
