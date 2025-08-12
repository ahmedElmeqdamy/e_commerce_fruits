import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruits_hub/core/helper_function/on_generate_route.dart';
// Import the generated localization file (adjust the path if needed)
import 'package:intl/intl.dart';

import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const FruitHub());
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: onGeneratRoute,
      initialRoute: "splashView",
      home: SplashView(),
    );
  }
}
