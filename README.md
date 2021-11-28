# bmi_calculator

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
"# bmi_calculator_ui_online"

Assignment

1. Weight & Age Section
2. BMI Formula: weight (kg) / height (m^2)
   void calculateBMI() {
   double height = 160; // in CM
   double weight = 80; // kg

double result = weight / pow((height/100), 2);

print(result.toStringAsFixed(1));
} 3. Pass the result data into the ResultScreen
