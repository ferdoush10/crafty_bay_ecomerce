
import 'package:crafty_bay/presentation/ui/screens/main_bottom_nav_screen.dart';
import 'package:crafty_bay/presentation/ui/widgets/app_logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(height: 48),
              const AppLogo(height: 80),
              const SizedBox(height: 24),
              Text('Complete Profile',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: 28,
                      )),
              const SizedBox(height: 4),
              Text('Get started with us with your details',
                  style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: 16),
              TextFormField(
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(hintText: "First name"),
              ),
              const SizedBox(height: 16),
              TextFormField(
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(hintText: "Last name"),
              ),
              const SizedBox(height: 16),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  hintText: "Mobile",
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(hintText: "City"),
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 16),
              TextFormField(
                textInputAction: TextInputAction.done,
                maxLines: 4,
                decoration:
                    const InputDecoration(hintText: "Shipping address..."),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.offAll(const MainBottomNavScreen());
                  },
                  child: const Text('C O M P L E T E'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
