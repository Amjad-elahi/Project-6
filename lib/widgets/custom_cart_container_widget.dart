import 'package:flutter/material.dart';
import 'package:project6/widgets/button/custom_elevated_button_widget.dart';

class CustomCartContainerWidget extends StatelessWidget {
  const CustomCartContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 101,
      width: 390,
      decoration: BoxDecoration(
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
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: Color(0xffFFFFFF),
                      shape: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffB98875)),
                          borderRadius: BorderRadius.circular(7)),
                      title: SizedBox(
                        height: 120,
                        width: 320,
                        child: RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                              text: "Are you sure you want to delete",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 24)),
                          TextSpan(
                              text: " Espresso",
                              style: TextStyle(
                                  color: Color(0xffB98875), fontSize: 24)),
                          TextSpan(
                              text: " from cart",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 24))
                        ])),
                      ),
                      actionsAlignment: MainAxisAlignment.spaceEvenly,
                      actions: [
                        ElevatedButton(
                            style: const ButtonStyle(
                                foregroundColor:
                                    WidgetStatePropertyAll(Color(0xffB98875)),
                                minimumSize:
                                    WidgetStatePropertyAll(Size(130, 50)),
                                shape: WidgetStatePropertyAll(
                                    RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 2, color: Color(0xffB98875)),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(24)))),
                                backgroundColor:
                                    WidgetStatePropertyAll(Color(0xffffffff))),
                            onPressed: () {},
                            child: const Text(
                              "Yes",
                              style: TextStyle(fontSize: 20),
                            )),
                        ElevatedButton(
                            style: const ButtonStyle(
                                foregroundColor:
                                    WidgetStatePropertyAll(Color(0xffB98875)),
                                minimumSize:
                                    WidgetStatePropertyAll(Size(130, 50)),
                                shape: WidgetStatePropertyAll(
                                    RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 2, color: Color(0xffB98875)),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(24)))),
                                backgroundColor:
                                    WidgetStatePropertyAll(Color(0xffffffff))),
                            onPressed: () {},
                            child: const Text(
                              "No",
                              style: TextStyle(fontSize: 20),
                            )),
                      ],
                    );
                  });
            },
          ),
          const Text(
            "1",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          CustomElevatedButtonWidget(
            icon: Icons.add,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
