import 'package:flutter/material.dart';

import '../widgets/text/custom_rich_text.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAF4EE),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Image.asset(
          "assets/menu.png",
          scale: 1.3,
        ),
        actions: const [
          Icon(
            Icons.search_rounded,
            size: 30,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
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
                    alignment: Alignment.centerLeft, child: CustomRichText()),
                const SizedBox(
                  height: 70,
                ),
                Container(
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
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(29, 29),
                              shape: const CircleBorder(),
                              backgroundColor: const Color(0xffB98875)),
                          onPressed: () {},
                          child: const Icon(
                            Icons.remove,
                            color: Colors.white,
                          )),
                      const Text(
                        "1",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(29, 29),
                              shape: const CircleBorder(),
                              backgroundColor: const Color(0xffB98875)),
                          onPressed: () {},
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
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
