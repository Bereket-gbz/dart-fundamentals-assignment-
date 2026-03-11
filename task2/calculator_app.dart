// Bereket G/Egziabher
// ID:ATE/7787/15


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




// Q6. What is the difference between a synchronous function and an asynchronous function in Dart?
    
// A synchronous function runs step by step and finishes its work before the
// next line of code runs. The program waits until the function completes.

// An asynchronous function can run in the background without blocking the
// rest of the program. It usually returns a Future and may take some time
// to finish (for example when waiting for data or a delay).

// In the Calculator class:
// - divide() is synchronous because the calculation happens immediately
//   and does not require waiting.
// - computeAsync() is asynchronous because it simulates a delayed or
//   time-consuming operation, so it returns a Future and runs using async.
// */


// /*
// Q7. Explain the purpose of the await keyword.

// The await keyword is used to pause the execution of an async function
// until the Future finishes and returns its result.

// If we forget to use await when calling an async function, the program
// does not wait for the result. Instead of the actual value, it prints
// something like:

// Instance of 'Future<int>'

// This happens because the function returns a Future object rather than
// the final computed value.
// */


// /*
// Q8. What is the purpose of the try-catch block in displayResult()?

// The try-catch block is used to handle errors safely.

// For example, if displayResult(10, 0, 'divide') is called, the divide()
// method throws an ArgumentError because division by zero is not allowed.

// The try-catch block catches this error and allows the program to print
// a friendly error message instead of crashing.

// If we removed the try-catch block, the program would stop running and
// show an unhandled exception error.
// */


// /*
// Q9. Why should divide() throw an ArgumentError instead of returning 0?

// Throwing an ArgumentError is better design because it clearly tells the
// caller that something went wrong (division by zero).

// If the function simply returned 0, the user of the function might think
// the result is correct, which could cause logical errors in the program.

// Also, printing an error directly inside divide() is not good because
// functions should focus on doing one task and let the caller decide how
// to handle errors.

// This reflects the principle of good function design and separation of
// responsibilities.
// */


// /*
// Q10. What does the async keyword on main() allow you to do?

// The async keyword allows the main() function to use the await keyword.
// This means main() can wait for asynchronous operations to finish before
// continuing execution.

// Yes, the assignment could technically be written without making main()
// async, but then we would need to handle the Future using methods like
// .then() instead of await, which would make the code less clear and
// harder to read.

// Using async and await makes asynchronous code easier to understand.
// */