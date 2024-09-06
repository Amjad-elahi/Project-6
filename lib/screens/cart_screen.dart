import 'package:flutter/material.dart';

import '../widgets/custom_alert_dialog_widget.dart';
import '../widgets/custom_app_bar_widget.dart';
import '../widgets/custom_cart_container_widget.dart';
import '../widgets/text/custom_rich_text_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAF4EE),
      appBar: const CustomAppBarWidget(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Align(
                    alignment: Alignment.centerLeft,
                    child: CustomRichTextWidget()),
                const SizedBox(
                  height: 70,
                ),
                CustomCartContainerWidget(onAddPressed: () {
                  
                },
                onRemovePressed:  () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return const CustomAlertDialogWidget();
                  });
            },),
                const Padding(
                  padding: EdgeInsets.only(top: 400),
                  child: Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total:",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "19 SAR",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
