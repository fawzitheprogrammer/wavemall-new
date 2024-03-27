import 'package:wavemall/controller/order_controller.dart';
import 'package:wavemall/utils/styles.dart';
import 'package:wavemall/view/account/orders/OrderList/OrderToPayList.dart';
import 'package:wavemall/view/account/orders/OrderList/OrderToReceiveList.dart';
import 'package:wavemall/view/account/orders/OrderList/OrderToShipList.dart';
import 'package:wavemall/widgets/AppBarWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'AllOrdersList.dart';

class MyOrders extends StatelessWidget {
  final OrderController orderController = Get.put(OrderController());

  final int tabIndex;

  MyOrders(this.tabIndex);

  @override
  Widget build(BuildContext context) {
    orderController.controller!.index = tabIndex;

    return Scaffold(
      backgroundColor: AppStyles.appBackgroundColor,
      appBar: AppBarWidget(
        title: "My Orders",
        bottom: PreferredSize(
          preferredSize: Size(Get.width, 100),
          child: TabBar(
            controller: orderController.controller,
            labelPadding: EdgeInsets.zero,
            tabs: orderController.tabs,
            indicatorColor: AppStyles.pinkColor,
            labelStyle: AppStyles.appFontBook.copyWith(fontSize: 12),
            unselectedLabelStyle: AppStyles.appFontBook.copyWith(
              fontSize: 12,
              color: AppStyles.greyColorLight,
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: orderController.controller,
        children: [
          AllOrdersListScreen(),
          OrderToPayListScreen(),
          OrderToShipListScreen(),
          OrderToReceiveListScreen(),
        ],
      ),
    );
  }
}
