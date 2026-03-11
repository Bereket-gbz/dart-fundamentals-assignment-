QR1. Which concept was hardest to understand?

The concept that was hardest for me to understand was async/await. At first, I assumed that simply marking a function as async would automatically handle the delay and return the correct result. I didn’t realize that I also needed to use await when calling asynchronous operations.

My confusion happened while working on the computeChained() method. I forgot to use await, and the program returned the result immediately instead of waiting for the delay. This made me think something was wrong with my code. After testing the program step by step, I noticed that the function was returning a Future instead of the actual value. Once I added await, the program paused correctly until the operation finished. Seeing the difference between printing a Future and printing the real result helped me finally understand how async and await work together.

QR2. Changing the code to use List<double>

If I needed to modify Task 1 to analyze a List<double> instead of List<int>, I would need to change the type of the list and update some of the variables and calculations that depend on it. For example, variables storing sums or averages might also need to use double instead of int. While the logic of the program would stay mostly the same, several parts of the code would still need to be updated.

This shows how important it is to think carefully about data types during the design stage. Choosing the correct data type early can prevent unnecessary changes later. If the program was designed with more flexibility in mind from the beginning, adapting it to work with different numeric types would be easier.

QR3. Real example of an asynchronous operation in a Flutter app

A real example of using asynchronous operations in a Flutter app would be loading data from a remote API, such as retrieving a list of products in an online shopping application. In this case, the app would send a network request, and the Future would eventually resolve to the data returned by the server, usually in JSON format. That data would then be converted into Dart objects and displayed in the app.

While the app is waiting for the response, the UI should remain responsive. Instead of freezing, it can show a loading indicator, such as a spinner or a message like “Loading…”. Once the data is received, the UI updates to display the products. This approach improves the user experience because the app continues running smoothly while the data is being fetched.

QR4. One function vs multiple methods

If a colleague suggested using a single function that takes the operation name as a parameter instead of separate methods like add(), subtract(), multiply(), and divide(), I would say that both approaches have advantages.

Using separate methods makes the code easier to read and understand because each method clearly represents a single operation. It also makes testing and debugging simpler, since each function has a specific responsibility. This approach follows the single responsibility principle, where each function focuses on doing one task well.

On the other hand, using one function with an operation parameter could reduce code repetition and make the program slightly shorter. However, for learning purposes and code clarity, I think separate methods are better because they make the structure and purpose of the calculator easier to understand.