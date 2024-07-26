import 'package:flutter/material.dart';

import '../../../base/res/media.dart';
import '../../../base/res/styles/app_styles.dart';

// search screen - section to display discount information

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          // long display discount information
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 15,
          ),
          width: size.width * 0.43,
          height: 435,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 1,
                spreadRadius: 1,
              ),
            ],
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Container(
                height: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: AssetImage(AppMedia.planeSit),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '20% discount on the early ooking of this flight. Don\'t miss!',
                style: AppStyle.headlineStyle2,
              ),
            ],
          ),
        ),
        Column(
          // section to display to containers inside a column
          // on the search screen.
          children: [
            Stack(
              // Stack is used to display the circle effect inside
              // the container.
              children: [
                Container(
                  // top teal container
                  padding:
                      const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
                  width: size.width * .43,
                  height: 210,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFF3AB8B8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Discount \nfor survey',
                        style: AppStyle.headlineStyle2.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Take the survey about our services and get a discount!',
                        style: AppStyle.headlineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  // the circle effect
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 18,
                        color: AppStyle.circleColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              // bottom orange container
              padding: const EdgeInsets.symmetric(
                vertical: 18,
                horizontal: 18,
              ),
              width: size.width * .43,
              height: 210,
              decoration: BoxDecoration(
                color: const Color(0xFFEC6545),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(
                    'Take Love',
                    style:
                        AppStyle.headlineStyle2.copyWith(color: Colors.white),
                  ),
                  RichText(
                    text: const TextSpan(children: [
                      TextSpan(text: '😍', style: TextStyle(fontSize: 38)),
                      TextSpan(text: '🥰', style: TextStyle(fontSize: 50)),
                      TextSpan(text: '😘', style: TextStyle(fontSize: 38)),
                    ]),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
