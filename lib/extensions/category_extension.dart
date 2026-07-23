import 'package:flutter/material.dart';

import '../models/category.dart';

extension CategoryExtension on Category {
  IconData get icon {
    switch (this) {
      case Category.grocery:
        return Icons.shopping_basket;
      case Category.cafe:
        return Icons.coffee;
      case Category.transport:
        return Icons.bus_alert;
      case Category.health:
        return Icons.health_and_safety;
      case Category.bills:
        return Icons.money;
      case Category.home:
        return Icons.home;
      case Category.shopping:
        return Icons.shop;
      case Category.entertainment:
        return Icons.tv;
      case Category.travel:
        return Icons.travel_explore;
      case Category.education:
        return Icons.school;
      case Category.pets:
        return Icons.pets;
      case Category.kids:
        return Icons.child_care;
      case Category.other:
        return Icons.no_accounts;
    }
  }
}
