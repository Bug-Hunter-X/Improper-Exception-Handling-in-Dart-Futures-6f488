```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Correctly handle the response
      final data = jsonDecode(response.body);
      // ... process the data ...
    } else {
      // Handle non-200 status codes appropriately, e.g., throw a custom exception
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions, log the error and re-throw
    print('Error fetching data: $e');
    rethrow; // Re-throw the exception to be handled further up the call stack
  }
}
```