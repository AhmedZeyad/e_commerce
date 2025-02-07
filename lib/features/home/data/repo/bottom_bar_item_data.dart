import 'package:e_commerce/core/helper/Icon.dart';
import 'package:e_commerce/features/home/data/model/bottom_bar_Item.dart';

List<BottomBarItemModel> bottomBarItems = [
  BottomBarItemModel(
      title: "Home",
      selected: IconHelper.homeSelected,
      unSelected: IconHelper.homeUnselected),
  BottomBarItemModel(
      title: "Category",
      selected: IconHelper.categorySelected,
      unSelected: IconHelper.categoryUnselected),
  BottomBarItemModel(
      title: "Cart",
      selected: IconHelper.cartSelected,
      unSelected: IconHelper.cartUnselected),
  BottomBarItemModel(
      title: "Favorite",
      selected: IconHelper.favoriteSelected,
      unSelected: IconHelper.favoriteUnselected),
  BottomBarItemModel(
      title: "Profile",
      selected: IconHelper.profileSelected,
      unSelected: IconHelper.profileUnselected),];
