import 'package:flutter/material.dart';
import 'package:project6/widgets/button/custom_elevated_button_widget.dart';

class CustomCartContainerWidget extends StatelessWidget {
  const CustomCartContainerWidget({super.key, this.onAddPressed, this.onRemovePressed});
  final Function()? onAddPressed;
  final Function()? onRemovePressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 101,
      width: 390,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 4,
                offset: const Offset(0, 4),
                color: const Color(0xff000000).withOpacity(0.25))
          ],
          color: const Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(7),
          border: Border.all(color: const Color(0xffB98875))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            width: 40,
          ),
          Image.asset("assets/Espresso.png"),
          const SizedBox(
            width: 30,
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Espresso",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              Text(
                "19 SAR",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          const SizedBox(
            width: 40,
          ),
          CustomElevatedButtonWidget(
            icon: Icons.remove,
            onPressed: onRemovePressed
          ),
          const Text(
            "1",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          CustomElevatedButtonWidget(
            icon: Icons.add,
            onPressed: onAddPressed,
          )
        ],
      ),
    );
  }
}
