import 'package:crafty_bay/presentation/state_holder/main_bottom_nav_controller.dart';
import 'package:crafty_bay/presentation/ui/utility/assets_path.dart';
import 'package:crafty_bay/presentation/ui/widgets/category_item.dart';
import 'package:crafty_bay/presentation/ui/widgets/home/banner_carousel.dart';
import 'package:crafty_bay/presentation/ui/widgets/home/circle_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/home/section_title.dart';
import '../widgets/product_card_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            searchTextField,
            const SizedBox(height: 12),
            const BannerCarousel(),
            const SizedBox(height: 8),
            SectionTitle(
                onTapSeeAll: () {
                  Get.find<MainBottomNavController>().changeIndex(1);
                },
                title: 'All Categories'),
            categoryList,
            SectionTitle(onTapSeeAll: () {}, title: 'Popular'),
            productList,
            const SizedBox(height: 8),
            SectionTitle(onTapSeeAll: () {}, title: 'Special'),
            productList,
            const SizedBox(height: 8),
            SectionTitle(onTapSeeAll: () {}, title: 'New'),
            productList,
          ],
        ),
      )),
    );
  }

  SizedBox get categoryList {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        primary: false,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (conntext, index) {
          return const CategoryItem();
        },
        separatorBuilder: (_, __) {
          return const SizedBox(width: 8);
        },
      ),
    );
  }

  SizedBox get productList {
    return SizedBox(
      height: 190,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        primary: false,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (conntext, index) {
          return const ProductCardItem();
        },
        separatorBuilder: (_, __) {
          return const SizedBox(width: 8);
        },
      ),
    );
  }

  TextFormField get searchTextField {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "search",
        filled: true,
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.grey,
        ),
        fillColor: Colors.grey.shade200,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  AppBar get appBar {
    return AppBar(
      title: Image.asset(AssetsPath.logoNav),
      actions: [
        CircleIconButton(
          onTap: () {},
          iconData: Icons.person,
        ),
        const SizedBox(width: 8),
        CircleIconButton(
          onTap: () {},
          iconData: Icons.call,
        ),
        const SizedBox(width: 8),
        CircleIconButton(
          onTap: () {},
          iconData: Icons.notifications_active_outlined,
        ),
      ],
    );
  }
}
