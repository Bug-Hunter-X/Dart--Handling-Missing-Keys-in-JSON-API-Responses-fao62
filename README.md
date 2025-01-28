# Dart: Handling Missing Keys in JSON API Responses

This repository demonstrates a common error in Dart when handling JSON responses from APIs and provides a solution. The bug arises from the assumption that the JSON response always contains a specific key, leading to potential runtime errors if the key is missing or the JSON structure is unexpected.

## Bug
The `bug.dart` file contains code that fetches data from an API and attempts to access a key ('key') from the JSON response. If the key is missing or the response is not a map, this code will throw an error.

## Solution
The `bugSolution.dart` file demonstrates a robust approach to handle such situations using null checks and type checking before accessing the key, providing a more resilient and error-free solution.
