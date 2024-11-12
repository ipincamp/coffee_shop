import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

class AuthProvider with ChangeNotifier {
  bool _isAuthenticated = false;
  Map<String, dynamic> _userData = {};

  bool get isAuthenticated => _isAuthenticated;
  Map<String, dynamic> get userData => _userData;

  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'http://auth-ci.test',
      connectTimeout: const Duration(milliseconds: 5000),
      receiveTimeout: const Duration(milliseconds: 3000),
      headers: {
        'Content-Type': 'application/json',
      },
    ),
  );

  Future<void> login(String username, String password) async {
    try {
      final response = await _dio.post(
        '/login',
        data: json.encode({
          'username': username,
          'password': password,
        }),
      );

      if (response.statusCode == 200) {
        final data = response.data;

        if (data['status'] == 200) {
          _isAuthenticated = true;
          _userData = data['data'];
          notifyListeners();
        } else {
          _isAuthenticated = false;
          throw Exception(data['message'] ?? 'Login failed');
        }
      } else {
        throw Exception('Failed to login');
      }
    } catch (error) {
      print(error);
      _isAuthenticated = false;
      throw error;
    }
  }
}
