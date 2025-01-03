# Improper Exception Handling in Dart Futures

This repository demonstrates a common error in Dart's asynchronous programming: improper exception handling within a `Future`.  The provided code showcases the issue and its solution.

## Problem

The `bug.dart` file contains a `Future` function that fetches data from an API. While it includes a `try-catch` block, it's missing a crucial `rethrow;` statement.  If an exception occurs, it's printed, but the error isn't propagated up the call stack, potentially leading to unexpected behavior.

## Solution

The `bugSolution.dart` file demonstrates the correct way to handle exceptions.  By adding `rethrow;`, the exception is re-thrown, allowing higher-level functions to handle it properly, ensuring robust error management and easier debugging.