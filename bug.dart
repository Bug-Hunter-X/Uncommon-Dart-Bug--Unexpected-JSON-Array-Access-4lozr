```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response body is a JSON array
      final jsonData = jsonDecode(response.body);
      // Accessing the elements without error handling
      final firstElement = jsonData[0]; // Potential error if jsonData is empty or not a list
      final secondElement = jsonData[1]; // Another potential error
      print(firstElement);
      print(secondElement);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```