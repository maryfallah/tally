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
}
