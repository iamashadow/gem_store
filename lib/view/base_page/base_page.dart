import 'package:ecommerce_app/main.dart';
import 'package:ecommerce_app/utils/app_colors/app_colors.dart';
import 'package:ecommerce_app/view/chart_page/chart_page.dart';
import 'package:ecommerce_app/view/descover_page/discover_page.dart';
import 'package:ecommerce_app/view/home_page/home_page.dart';
import 'package:ecommerce_app/view/profile_page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../controllers/base_page_controller/base_page_controller.dart';

class BasePage extends StatelessWidget {
  BasePage({super.key});

  BasePageController basePageController = Get.put(BasePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Obx(()=> IndexedStack(
        index: basePageController.pageIndex.value,
        children: const [
          HomePage(),
          DiscoverPage(),
          ChartPage(),
          ProfilePage()
        ],
      )),

      bottomNavigationBar: Obx(()=>BottomNavigationBar(

        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.bottomNavigationBarBackgroundColor,

        selectedItemColor: AppColors.bottomNavigationBarSelectedIconColor,
        showSelectedLabels: true,

        unselectedItemColor: AppColors.bottomNavigationBarUnelectedIconColor,
        showUnselectedLabels: true,

        currentIndex: basePageController.pageIndex.value,

        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded,),
              label: "Discover"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined,),
              label: "Chart"
          ),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.person),
              label: "Profile"
          ),
        ],
        onTap: (value){
          basePageController.pageIndex.value = value;
        },
      )),
    );
  }
}
