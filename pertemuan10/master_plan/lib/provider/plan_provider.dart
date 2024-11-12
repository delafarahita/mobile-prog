import 'package:flutter/material.dart';
import '../models/data_layer.dart'; // Pastikan path model benar

class PlanProvider extends InheritedWidget {
  final ValueNotifier<List<Plan>> notifier = ValueNotifier<List<Plan>>([]);

  PlanProvider({super.key, required super.child});

  static ValueNotifier<List<Plan>> of(BuildContext context) {
    final PlanProvider? result =
        context.dependOnInheritedWidgetOfExactType<PlanProvider>();
    assert(result != null, 'No PlanProvider found in context');
    return result!.notifier;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}
