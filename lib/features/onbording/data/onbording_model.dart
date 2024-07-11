class OnbordingModel {
  final String? leftIcon;
  final String? rightText;
  final String image;
  final String title;
  final String description;
  final String? rightButtonTitle;
  final String leftButtonTitle;
      void Function()?   onTapLeftIcon;
  void Function()? onTapRightText;

  OnbordingModel({
     this.leftIcon,
     this.rightText,
    required this.image,
    required this.title,
    required this.description,
    this.rightButtonTitle,
    required this.leftButtonTitle,
    
  });
}
