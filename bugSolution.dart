```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      // Check if jsonData is a Map and contains the key before accessing it
      if (jsonData is Map && jsonData.containsKey('key')) {
        final value = jsonData['key'];
        print(value);
      } else {
        print('Key not found or invalid JSON structure');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```