import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TipCard extends StatelessWidget {
  const TipCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 8),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "TITLE",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 26,
                      color: Colors.deepPurple),
                ),
                Text(DateFormat.yMd().format(DateTime.now())),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "89",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 46),
                        ),
                        Text(
                          "\$",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 22),
                        ),
                      ],
                    ),
                    Text(
                      "TOTAL",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                    )
                  ],
                ),
                Container(
                  width: 1.5,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "SUBTOTAL",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.grey[700]),
                    ),
                    const Row(
                      children: [
                        Text(
                          "\$ ",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        Text(
                          "950",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "TIP",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                    ),
                    const Row(
                      children: [
                        Text(
                          "\$ ",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        Text(
                          "50",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
