import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthService {
  static const String baseUrl = 'http://backend.juniordeals.co.uk/api';

  static Future<Map<String, dynamic>> register(
      String name, String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/register'),
      body: {
        'name': name,
        'email': email,
        'password': password,
      },
    );

    return json.decode(response.body);
  }

  static Future<Map<String, dynamic>> login(
      String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/login'),
      body: {
        'email': email,
        'password': password,
      },
    );

    return json.decode(response.body);
  }

// Other authentication methods like user info retrieval and logout can be implemented here
}