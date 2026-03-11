import 'dart:async';

class Calculator {

  Future<double> add(double a, double b) async {
    await Future.delayed(Duration(seconds: 1));
    return a + b;
  }

  Future<double> subtract(double a, double b) async {
    await Future.delayed(Duration(seconds: 1));
    return a - b;
  }

  Future<double> multiply(double a, double b) async {
    await Future.delayed(Duration(seconds: 1));
    return a * b;
  }

  Future<double> divide(double a, double b) async {
    await Future.delayed(Duration(seconds: 1));

    if (b == 0) {
      throw Exception("Division by zero is not allowed.");
    }

    return a / b;
  }
}

Future<void> main() async {

  Calculator calculator = Calculator();

  try {
    double addition = await calculator.add(10, 5);
    print("Addition Result: $addition");

    double subtraction = await calculator.subtract(10, 5);
    print("Subtraction Result: $subtraction");

    double multiplication = await calculator.multiply(10, 5);
    print("Multiplication Result: $multiplication");

    double division = await calculator.divide(10, 2);
    print("Division Result: $division");

  } catch (error) {
    print("An error occurred: $error");
  }
}