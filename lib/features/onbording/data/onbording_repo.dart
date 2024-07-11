import 'package:e_commerce/features/onbording/data/onbording_model.dart';

List<OnbordingModel> onbordingList = [
  OnbordingModel(
    leftIcon: 'assets/quickmart.png',
    rightText: 'Skip for now',
    image: 'assets/onbording1.png',
    title: 'Explore a wide range of products',
    description:
        'Explore a wide range of products at your fingertips. QuickMart offers an extensive collection to suit your needs.',
    leftButtonTitle: 'Next',
  ),
  OnbordingModel(
    rightText: 'Skip for now',
    image: 'assets/onbording2.png',
    leftIcon: 'assets/arrow_left.png',
    title: 'Unlock exclusive offers and discounts',
    description:
        'Get access to limited-time deals and special promotions available only to our valued customers.',
    leftButtonTitle: 'Next',
  ),
  OnbordingModel(
    leftIcon: 'assets/arrow_left.png',
    image: 'assets/onbording3.png',
    title: 'Safe and secure payments',
    description:
        ' QuickMart employs industry-leading encryption and trusted payment gateways to safeguard your financial information.',
    leftButtonTitle: 'Get Started',
    rightButtonTitle: 'Login',
  ),
];
