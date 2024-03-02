class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "برنامج ادخاري",
    image: "assets/images/saving.png",
    desc: "يهدف لتعزيز دخلك على المدى الطويل بمخاطر ضئيلة مع امكانية الانسحاب باي وقت حيث يتم استقطاع نسبة معينه من معاشك",
  ),
  OnboardingContents(
    title: "برنامج استثماري",
    image: "assets/images/investment.png",
    desc: "يهدف الى تعزيز دخلك على المدى القصير حيث سيتم استقطاع نسبة معينة من معاشك واستثمارها خلال مدة قصيرة",
  ),
  OnboardingContents(
    title: "التنبؤ الذكي",
    image: "assets/images/ai.png",
    desc: "مساعدك الذكي من مضمون ، يرشدك للطريق الامثل لتعزيز دخلك بناء على دخلك ومصروفاتك الشهرية",
  ),
];