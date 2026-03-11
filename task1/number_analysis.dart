// bereket G/Egziabher
// ID:ATE/7787/15
void main() {
  List<int> numbers = [12, 7, 5, 20, 9, 14, 3];

  print("List of Numbers: $numbers");

  int total = calculateSum(numbers);
  double avg = calculateAverage(numbers);
  int max = findMaximum(numbers);
  int min = findMinimum(numbers);
  List<int> evens = findEvenNumbers(numbers);

  print("Sum: $total");
  print("Average: $avg");
  print("Maximum Value: $max");
  print("Minimum Value: $min");
  print("Even Numbers: $evens");
}

int calculateSum(List<int> nums) {
  int sum = 0;

  for (int number in nums) {
    sum += number;
  }

  return sum;
}

double calculateAverage(List<int> nums) {
  int sum = calculateSum(nums);
  return sum / nums.length;
}

int findMaximum(List<int> nums) {
  int max = nums[0];

  for (int number in nums) {
    if (number > max) {
      max = number;
    }
  }

  return max;
}

int findMinimum(List<int> nums) {
  int min = nums[0];

  for (int number in nums) {
    if (number < min) {
      min = number;
    }
  }

  return min;
}

List<int> findEvenNumbers(List<int> nums) {
  List<int> evenList = [];

  for (int number in nums) {
    if (number % 2 == 0) {
      evenList.add(number);
    }
  }

  return evenList;
}



//
// Q1. What is the difference between List<int> and List<dynamic> in Dart?
// Answer:

// List<int> is a typed list that can only store integer values.
// List<dynamic> can store values of any type (int, String, double, etc.).

// Example:
// List<int> numbers = [1, 2, 3];       // Only integers allowed
// List<dynamic> anything = [1, "Hi", 3.5];  // Mixed types allowed

// It is usually better to use List<int> because:
// 1. It improves type safety (prevents inserting wrong data types).
// 2. It helps the compiler detect errors early.
// 3. It makes the code easier to understand and maintain.
// */



//   /*
//   Q4. Describe in plain English what the for-in loop does.

//   The for-in loop goes through each element in a collection one by one.
//   Instead of using an index like numbers[i], it directly gives the value
//   of each item in the list.

//   Example:
//   for (int num in numbers)

//   This means:
//   "For every number stored in the list 'numbers', assign it to 'num'
//   and execute the loop body."

//   Difference from traditional for loop:

//   Traditional loop:
//   for (int i = 0; i < numbers.length; i++)

//   Uses an index to access elements.

//   for-in loop:
//   Directly accesses elements without using an index.

//   Prefer for-in when:
//   - You only need the values
//   - Code readability is important

//   Prefer traditional for when:
//   - You need the index position
//   */



// /*
// Q3. Why does calculateAverage() call calculateSum()?

// This demonstrates the software design principle called
// "Code Reusability" (also related to DRY: Don't Repeat Yourself).

// Instead of rewriting the same sum logic again inside calculateAverage(),
// the function reuses calculateSum().

// Benefits:
// 1. Less duplicate code
// 2. Easier to maintain
// 3. If the sum logic changes, it only needs to be updated in one place
// */


// /*
// Q2. Why initialize the running maximum to the first element?

// In findMax(), we start with:

// int max = numbers[0];

// This is important because:
// - The first element is guaranteed to be a real value from the list.

// If we used 0 instead:
// Example list: [-5, -10, -2]

// The algorithm would incorrectly return 0,
// even though 0 is not in the list.

// If we used a very small number:
// - It may still cause logical errors if the list contains smaller numbers.
// - It also makes the code less reliable.

// Using the first element ensures the comparison always starts
// with a valid value from the list.
// */

//   /*
//   Q5. What happens if an empty list is passed?

//   If numbers is empty, accessing numbers[0] will cause
//   a runtime error: "RangeError".

//   To handle this safely, we check if the list is empty first.
//   */
// }