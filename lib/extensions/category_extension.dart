import 'package:flutter/material.dart';

import '../models/category.dart';

extension CategoryExtension on Category {
  IconData get icon {
    switch (this) {
      case Category.groceries:
        return Icons.shopping_basket;
      case Category.cafe:
        return Icons.coffee;
      case Category.transportation:
        return Icons.bus_alert;
      case Category.health:
        return Icons.health_and_safety;
      case Category.home:
        return Icons.home;
      case Category.clothing:
        return Icons.checkroom;
      case Category.leisure:
        return Icons.tv;
      case Category.travel:
        return Icons.travel_explore;
      case Category.education:
        return Icons.school;
      case Category.pets:
        return Icons.pets;
      case Category.family:
        return Icons.family_restroom;
      case Category.other:
        return Icons.no_accounts;
      case Category.gifts:
        return Icons.card_giftcard;
      case Category.workout:
        return Icons.fitness_center;
    }
  }

  Color get color {
    switch (this) {
      case Category.groceries:
        return const Color(0xFF4CAF50);
      case Category.cafe:
        return const Color(0xFF8D6E63);
      case Category.transportation:
        return const Color(0xFF42A5F5);
      case Category.health:
        return const Color(0xFFEF5350);
      case Category.home:
        return const Color(0xFF26A69A);
      case Category.clothing:
        return const Color(0xFFAB47BC);
      case Category.leisure:
        return const Color(0xFFFFB300);
      case Category.travel:
        return const Color(0xFF29B6F6);
      case Category.education:
        return const Color(0xFF5C6BC0);
      case Category.pets:
        return const Color(0xFFFF7043);
      case Category.family:
        return const Color(0xFFEC407A);
      case Category.other:
        return const Color(0xFF90A4AE);
      case Category.gifts:
        return const Color(0xFF7E57C2);
      case Category.workout:
        return const Color(0xFF26C6DA);
    }
  }
}
