import 'package:supabase_flutter/supabase_flutter.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';

class SupabaseConfig {
  static const String supabaseUrl = 'https://hnkdulhclazzjuekqomo.supabase.co';
  static const String supabaseAnonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhua2R1bGhjbGF6emp1ZWtxb21vIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDQ3MDczNzAsImV4cCI6MjA2MDI4MzM3MH0.nZ_mzjDzZrC5MpUpHBN9AZoZx48bz6a-v1Umhd2ljrI';

  static SupabaseClient get client => Supabase.instance.client;

  static Future<void> initialize() async {
    await Supabase.initialize(
      url: supabaseUrl,
      anonKey: supabaseAnonKey,
    );
  }

  // Hash password before storing in database
  static String hashPassword(String password) {
    var bytes = utf8.encode(password);
    var digest = sha256.convert(bytes);
    return digest.toString();
  }

  // Verify password during login
  static bool verifyPassword(String password, String hashedPassword) {
    return hashPassword(password) == hashedPassword;
  }
}
