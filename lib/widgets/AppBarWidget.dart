import 'package:wavemall/AppConfig/app_config.dart';
import 'package:wavemall/utils/styles.dart';
import 'package:wavemall/widgets/cart_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/MainNavigation.dart';

// class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {

//   @override
//   _AppBarWidgetState createState() => _AppBarWidgetState();

// }

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(bottom == null ? 60 : 100);

  final String? title;
  final PreferredSizeWidget? bottom;
  final bool? showCart;
  AppBarWidget({this.title, this.bottom, this.showCart = true});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      backgroundColor: Colors.white,
      centerTitle: false,
      elevation: 0,
      bottom: bottom,
      title: Text(
        title!,
        style: AppStyles.appFontMedium.copyWith(
          fontSize: 16,
          color: Colors.black,
        ),
      ),
      actions: [
        showCart!
            ? CartIconWidget(
                isSliver: false,
              )
            : SizedBox.shrink(),
      ],
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: AppStyles.pinkColor,
        ),
        onPressed: () {
          if (AppConfig.isPasswordChange) {
            Get.to(MainNavigation());
            AppConfig.isPasswordChange = false;
          } else {
            Get.back();
          }
        },
      ),
    );
  }
}
