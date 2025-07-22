import 'package:flutter/foundation.dart';
import '../models/user_model.dart';
import '../services/auth_service.dart';

class AuthProvider with ChangeNotifier {
  UserModel? _currentUser;
  bool _isLoading = false;
  String? _errorMessage;

  UserModel? get currentUser => _currentUser;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  bool get isAuthenticated => _currentUser != null;

  void _setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  void _setError(String? error) {
    _errorMessage = error;
    notifyListeners();
  }

  Future<bool> login(String email, String password) async {
    _setLoading(true);
    _setError(null);

    try {
      final user = await AuthService.login(email, password);
      if (user != null) {
        _currentUser = user;
        _setLoading(false);
        notifyListeners();
        return true;
      } else {
        _setError('Invalid email or password');
        _setLoading(false);
        return false;
      }
    } catch (e) {
      _setError('Login failed: $e');
      _setLoading(false);
      return false;
    }
  }

  Future<bool> register(String email, String password, String name, String role) async {
    _setLoading(true);
    _setError(null);

    try {
      print('AuthProvider: Starting registration process');
      
      // Validate inputs
      if (email.isEmpty || password.isEmpty || name.isEmpty || role.isEmpty) {
        _setError('All fields are required');
        _setLoading(false);
        return false;
      }

      if (!_isValidEmail(email)) {
        _setError('Please enter a valid email address');
        _setLoading(false);
        return false;
      }

      if (password.length < 6) {
        _setError('Password must be at least 6 characters long');
        _setLoading(false);
        return false;
      }

      print('AuthProvider: Checking if email exists');
      final emailExists = await AuthService.emailExists(email);
      if (emailExists) {
        _setError('Email already exists');
        _setLoading(false);
        return false;
      }

      print('AuthProvider: Calling AuthService.register');
      final user = await AuthService.register(email, password, name, role);
      if (user != null) {
        _currentUser = user;
        _setLoading(false);
        notifyListeners();
        print('AuthProvider: Registration successful');
        return true;
      } else {
        _setError('Registration failed - please try again');
        _setLoading(false);
        return false;
      }
    } catch (e) {
      print('AuthProvider: Registration error: $e');
      String errorMessage = 'Registration failed';
      
      if (e.toString().contains('duplicate key')) {
        errorMessage = 'Email already exists';
      } else if (e.toString().contains('violates check constraint')) {
        errorMessage = 'Invalid role selected';
      } else if (e.toString().contains('network')) {
        errorMessage = 'Network error - please check your connection';
      } else {
        errorMessage = 'Registration failed: ${e.toString()}';
      }
      
      _setError(errorMessage);
      _setLoading(false);
      return false;
    }
  }

  bool _isValidEmail(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }

  void logout() {
    _currentUser = null;
    _errorMessage = null;
    notifyListeners();
  }
}
