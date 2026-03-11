void main() {
  print("Program running");
}
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