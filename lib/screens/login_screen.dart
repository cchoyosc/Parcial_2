import 'package:flutter/material.dart';
import 'package:parcial_2/core/string.dart';
import 'package:parcial_2/core/colors.dart';
import '../core/routes.dart';
import '../core/colors.dart';
import '../core/string.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo y nombre
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/icons/7_logo.png', width: 60, height: 60),
                  const SizedBox(width: 12),
                  Text(
                    AppsStrings.appNombre,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.secondary,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
              Text(
                AppsStrings.calTitle,
                style: TextStyle(
                  color: AppColors.secondary,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),

              TextField(
                decoration: InputDecoration(
                  hintText: 'Ingresos mensuales',
                  filled: true,
                  fillColor: AppColors.blanco,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              TextField(
                decoration: InputDecoration(
                  hintText: 'Gastos fijos mensuales',
                  filled: true,
                  fillColor: AppColors.blanco,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
