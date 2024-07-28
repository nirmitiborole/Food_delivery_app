class UnboardingContent {
  String image;
  String title;
  String description;
  UnboardingContent(
      {required this.description, required this.image, required this.title});
}

List<UnboardingContent> contents = [
  UnboardingContent(
      description: 'Pick your food from our menu\n           More than 35 times',
      image: "images/onboarding1.png",
      title: "Select from Our\n     Best Menu"),
  UnboardingContent(
      description: 'We Are Preparing Your Order',
      image: "images/onboarding2.png",
      title: "               Wait a minute...\n Your dish is being prepared"),
  UnboardingContent(
      description: 'We deliver your\n   order quickly',
      image: "images/onboarding3.png",
      title: "Speeding Your World!"),
];
