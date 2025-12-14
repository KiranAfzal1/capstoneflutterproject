import 'dart:convert';

class ApiService {
  // Mock data service
  Future<List<Map<String, dynamic>>> fetchProducts() async {
    await Future.delayed(const Duration(seconds: 1));

    return [
      {
        'id': '1',
        'title': 'Modern Headphones',
        'description':
        'High-fidelity wireless headphones with noise cancellation.',
        'price': 199.99,
        'image': 'https://via.placeholder.com/300',
        'category': 'Electronics',
      },
    ];
  }
}
