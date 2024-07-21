// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ticket_app/base/res/styles/app_styles.dart';

class Hotel extends StatelessWidget {
  //map to displlay the hotel data
  final Map<String, dynamic> hotel;

  const Hotel({
    super.key,
    required this.hotel,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.all(8),
      width: size.width * 0.6,
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: AppStyle.primaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/${hotel['image']}'),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              hotel['place'],
              style:
                  AppStyle.headlineStyle1.copyWith(color: AppStyle.kakiColor),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              hotel['destination'],
              style: AppStyle.headlineStyle3.copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              ('\$${hotel['price'].toString()}/night'),
              style:
                  AppStyle.headlineStyle1.copyWith(color: AppStyle.kakiColor),
            ),
          ),
        ],
      ),
    );
  }
}
