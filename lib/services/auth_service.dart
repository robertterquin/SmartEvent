import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:crypto/crypto.dart';
import 'dart:convert';
import '../models/user_model.dart';
import '../config/supabase_config.dart';

class AuthService {
  static final SupabaseClient _supabase = Supabase.instance.client;

  static String _hashPassword(String password) {
    var bytes = utf8.encode(password);
    var digest = sha256.convert(bytes);
    return digest.toString();
  }

  static Future<void> _logLoginAttempt(String email, bool success) async {
    try {
      await _supabase.from('login_attempts').insert({
        'user_email': email,
        'success': success.toString(),
      });
    } catch (e) {
      print('Failed to log login attempt: $e');
    }
  }

  static Future<UserModel?> login(String email, String password) async {
    try {
      final hashedPassword = _hashPassword(password);
      
      final response = await _supabase
          .from('users')
          .select()
          .eq('email', email)
          .eq('password', hashedPassword)
          .single();

      await _logLoginAttempt(email, true);
      return UserModel.fromJson(response);
    } catch (e) {
      print('Login error: $e');
      await _logLoginAttempt(email, false);
      return null;
    }
  }

  static Future<UserModel?> register(
    String email, 
    String password, 
    String name, 
    String role
  ) async {
    try {
      print('Starting registration for email: $email');
      
      final hashedPassword = _hashPassword(password);
      print('Password hashed successfully'); // Don't log the actual hash
      
      final insertData = {
        'email': email,
        'password': hashedPassword,
        'name': name,
        'role': role,
      };
      print('Insert data prepared for: $email'); // Don't log full data with password
      
      final response = await _supabase
          .from('users')
          .insert(insertData)
          .select()
          .single();
      
      print('Registration successful: $response');
      return UserModel.fromJson(response);
    } catch (e) {
      print('Registration error: $e');
      if (e is PostgrestException) {
        print('Postgrest error details: ${e.message}');
        print('Postgrest error hint: ${e.hint}');
        print('Postgrest error code: ${e.code}');
      }
      rethrow;
    }
  }

  static Future<bool> emailExists(String email) async {
    try {
      final response = await _supabase
          .from('users')
          .select('email')
          .eq('email', email);
      
      return response.isNotEmpty;
    } catch (e) {
      print('Email check error: $e');
      return false;
    }
  }
}
