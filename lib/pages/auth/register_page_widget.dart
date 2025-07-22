import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '/flutter_flow/flutter_flow_util.dart';

class RegisterPageWidget extends StatefulWidget {
  const RegisterPageWidget({super.key});

  static const routeName = 'RegisterPage';
  static const routePath = '/register';

  @override
  State<RegisterPageWidget> createState() => _RegisterPageWidgetState();
}

class _RegisterPageWidgetState extends State<RegisterPageWidget> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1DD1A1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF1DD1A1), Color(0xFF00D2FF)],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
              ),
            ),
            child: Column(
              children: [
                // Top decorative lines
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 60,
                        height: 4,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 40,
                        height: 4,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 30,
                        height: 4,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ],
                  ),
                ),
                
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Main content card
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 20,
                                color: Colors.black.withOpacity(0.1),
                                offset: const Offset(0, 10),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Form(
                              key: _formKey,
                              child: Column(
                                children: [
                                  // Illustration and title
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'Here\'s\nyour first\nstep with\nus!',
                                              style: TextStyle(
                                                fontSize: 28,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF2D3748),
                                                height: 1.2,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      // Illustration placeholder
                                      Container(
                                        width: 120,
                                        height: 120,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF1DD1A1).withOpacity(0.1),
                                          borderRadius: BorderRadius.circular(60),
                                        ),
                                        child: const Center(
                                          child: Icon(
                                            Icons.group,
                                            size: 60,
                                            color: Color(0xFF1DD1A1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  
                                  const SizedBox(height: 30),
                                  
                                  // Name field
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Name',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF1DD1A1),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      TextFormField(
                                        controller: _nameController,
                                        decoration: InputDecoration(
                                          hintText: 'kapil',
                                          hintStyle: TextStyle(
                                            color: Colors.grey[400],
                                            fontSize: 16,
                                          ),
                                          border: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.grey[300]!,
                                            ),
                                          ),
                                          focusedBorder: const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF1DD1A1),
                                              width: 2,
                                            ),
                                          ),
                                          contentPadding: const EdgeInsets.symmetric(vertical: 12),
                                        ),
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF2D3748),
                                        ),
                                      ),
                                    ],
                                  ),
                                  
                                  const SizedBox(height: 24),
                                  
                                  // Email field
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Email',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF1DD1A1),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      TextFormField(
                                        controller: _emailController,
                                        decoration: InputDecoration(
                                          hintText: 'example@email.com',
                                          hintStyle: TextStyle(
                                            color: Colors.grey[400],
                                            fontSize: 16,
                                          ),
                                          border: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.grey[300]!,
                                            ),
                                          ),
                                          focusedBorder: const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF1DD1A1),
                                              width: 2,
                                            ),
                                          ),
                                          contentPadding: const EdgeInsets.symmetric(vertical: 12),
                                        ),
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF2D3748),
                                        ),
                                      ),
                                    ],
                                  ),
                                  
                                  const SizedBox(height: 24),
                                  
                                  // Phone field
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Mobile',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF1DD1A1),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      TextFormField(
                                        controller: _phoneController,
                                        decoration: InputDecoration(
                                          hintText: '8129****',
                                          hintStyle: TextStyle(
                                            color: Colors.grey[400],
                                            fontSize: 16,
                                          ),
                                          border: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.grey[300]!,
                                            ),
                                          ),
                                          focusedBorder: const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF1DD1A1),
                                              width: 2,
                                            ),
                                          ),
                                          contentPadding: const EdgeInsets.symmetric(vertical: 12),
                                        ),
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF2D3748),
                                        ),
                                      ),
                                    ],
                                  ),
                                  
                                  const SizedBox(height: 24),
                                  
                                  // Password field
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Password',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF1DD1A1),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      TextFormField(
                                        controller: _passwordController,
                                        obscureText: !_isPasswordVisible,
                                        decoration: InputDecoration(
                                          hintText: '••••••••••••••',
                                          hintStyle: TextStyle(
                                            color: Colors.grey[400],
                                            fontSize: 16,
                                          ),
                                          border: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.grey[300]!,
                                            ),
                                          ),
                                          focusedBorder: const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF1DD1A1),
                                              width: 2,
                                            ),
                                          ),
                                          contentPadding: const EdgeInsets.symmetric(vertical: 12),
                                          suffixIcon: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                _isPasswordVisible = !_isPasswordVisible;
                                              });
                                            },
                                            icon: Icon(
                                              _isPasswordVisible 
                                                ? Icons.visibility_off 
                                                : Icons.visibility,
                                              color: Colors.grey[400],
                                            ),
                                          ),
                                        ),
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF2D3748),
                                        ),
                                      ),
                                    ],
                                  ),
                                  
                                  const SizedBox(height: 32),
                                  
                                  // Register button
                                  SizedBox(
                                    width: double.infinity,
                                    height: 50,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Navigate to home page
                                        context.go('/');
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(0xFF1DD1A1),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(25),
                                        ),
                                        elevation: 0,
                                      ),
                                      child: const Text(
                                        'Register',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  
                                  const SizedBox(height: 16),
                                  
                                  // Login link
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          context.go('/login');
                                        },
                                        child: const Icon(
                                          Icons.arrow_back,
                                          color: Color(0xFF1DD1A1),
                                          size: 20,
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      GestureDetector(
                                        onTap: () {
                                          context.go('/login');
                                        },
                                        child: const Text(
                                          'Already have an account?',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF1DD1A1),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}