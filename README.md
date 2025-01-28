# Uncommon Dart Bug: Unexpected JSON Array Access

This repository demonstrates a subtle bug in Dart code that arises when accessing elements of a JSON array without proper error handling. The code attempts to access elements at specific indices, which may lead to an `IndexOutOfRangeException` if the array is empty or shorter than expected.  The solution involves adding checks to prevent this exception.

## Bug Description

The `fetchData` function retrieves data from a remote API and parses the JSON response. It then attempts to access the first and second elements of the JSON array directly.  This works fine if the array has at least two elements, but fails with an exception if it has fewer.