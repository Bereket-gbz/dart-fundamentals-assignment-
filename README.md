# Dart Fundamentals Assignment

**Name:**  Bereket G/Egziabher
**Student ID:** ATE/7787/15
**Course:** Mobile Application Development – Addis Ababa University  
**Assignment Title:** Programming Assignment 1 – Dart Fundamentals

## Overview

This repository contains my solutions for the Dart Fundamentals assignment. The assignment is divided into two main tasks that helped me practice important Dart concepts such as lists, functions, classes, exception handling, and asynchronous programming.

### Task 1: Number Analysis App

In this task, I wrote a program that works with a list of In this task, I created a program that works with a list of integers and performs different types of analysis on the numbers. The program calculates the maximum value, minimum value, sum, and average using loops and custom functions. The results are printed in a clear and readable format. This task helped me better understand how lists, loops, and functions work in Dart.

#### Optional Challenge Extensions

I also completed several optional challenge extensions for Task 1:

Empty List Guard: Added checks to handle the case when the list is empty so the program prints a helpful message instead of crashing.

Count Negatives: Implemented a function countNegatives(List<int> numbers) that counts how many numbers in the list are negative.

Sorted Output: Created a simple sorting algorithm (bubble sort) that returns a new sorted list without using Dart’s built-in .sort() method.

Collection Methods Comparison: Rewrote some functions using Dart’s built-in collection methods such as .fold(), .where(), and .reduce(), and added comments explaining the differences compared to using loops.

### Task 2: Async Calculator App

In this task, I built a `Calculator` class with methods for basic arithmetic operations. I also added asynchronous behavior using `Future`, `async`, and `await` to simulate delays, like waiting for data from a server. The program handles divide-by-zero errors gracefully. This task gave me practice with object-oriented programming and async concepts in Dart.

#### Extensions

- History Log: Stores and prints all past results.
- Chain Operations: Applies operations across a list of values.
- Input Validation: Custom exception for invalid operations.
- Parallel Futures: Demonstrates sequential vs parallel execution.

## How to Run

- Clone the repository
- Navigate to the task folder
- Run with: `dart run task1/number_analysis.dart` or `dart run task2/calculator_app.dart`
