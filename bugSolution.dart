```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      // Check if jsonData is a list and contains at least two elements
      if (jsonData is List && jsonData.length >= 2) {
        final firstElement = jsonData[0];
        final secondElement = jsonData[1];
        print(firstElement);
        print(secondElement);
      } else {
        print('JSON data is not a list or does not contain enough elements.');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```