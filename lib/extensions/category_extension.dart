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
        return const Color(0xFF007200);

      case Category.cafe:
        return const Color(0xFF99582A);

      case Category.transportation:
        return const Color(0xFF90e0ef);

      case Category.health:
        return const Color(0xFFC1121F);

      case Category.home:
        return const Color(0xFF023e8a);

      case Category.clothing:
        return const Color(0xFFe0aaff);

      case Category.leisure:
        return const Color(0xFFFFB703);

      case Category.travel:
        return const Color(0xFFE85D04);

      case Category.education:
        return const Color(0xFFA7C957);

      case Category.pets:
        return const Color(0xFF7B2CBF);

      case Category.family:
        return const Color(0xFFFF579F);

      case Category.other:
        return const Color(0xFF495057);

      case Category.gifts:
        return const Color(0xFFffb3c1);

      case Category.workout:
        return const Color(0xFF0077B6);
    }
  }
}
