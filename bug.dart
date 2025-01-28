```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data
      final jsonData = json.decode(response.body);
      // Error: jsonData might not be a Map<String, dynamic>
      final value = jsonData['key']; //Potential error if 'key' is missing or jsonData is not a map
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
    //This exception will not handle cases where the response status code is not 200 but the response is not an exception
  }
}
```