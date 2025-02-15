import 'package:dalton_wade/helpers/route.dart';
import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:dalton_wade/views/base/custom_app_bar.dart';
import 'package:dalton_wade/views/base/custom_button.dart';
import 'package:dalton_wade/views/base/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  final nameController = TextEditingController(text: "Olivai Wilson");
  final cardController = TextEditingController(text: "1234567890");
  final dateController = TextEditingController(text: "12/2023");
  final cvvController = TextEditingController(text: "123");
  final zipController = TextEditingController(text: "12345");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Text(
                "Checkout",
                style: AppStyles.h07.copyWith(
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "BUSINESS BUILDER",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                  color: AppColors.dark,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                "\$129/mo + \$79 per transaction",
                style: AppStyles.h06.copyWith(
                  color: AppColors.dark,
                ),
              ),
              const SizedBox(height: 24),
              CustomTextField(
                label: "Name on Credit Card",
                controller: nameController,
              ),
              const SizedBox(height: 12),
              CustomTextField(label: "Credit Card Number",
                controller: cardController,
              ),
              const SizedBox(height: 12),
              CustomTextField(label: "Expiration Date",
                controller: dateController,
              ),
              const SizedBox(height: 12),
              CustomTextField(label: "CVV",
                controller: cvvController,
              ),
              const SizedBox(height: 12),
              CustomTextField(label: "Zipcode",
                controller: zipController,
              ),
              const SizedBox(height: 24),
              CustomButton(
                text: "Proceed to Pay",
                onTap: () {
                  Get.toNamed(AppRoutes.confirmation);
                },
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
