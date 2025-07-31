import 'package:flutter/material.dart';
import 'package:movieapp/screens/forgot_password_screen.dart';
import 'package:movieapp/screens/vpn_main_screen.dart';
import 'package:movieapp/widgets/social_login_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;
  bool _isChecked = false;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.png"),
                fit: BoxFit.cover,
              ),
            ),
            padding: EdgeInsets.only(top: 80, left: 20, right: 20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo.png', height: 120),
                  SizedBox(height: 40),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'login to access to your account',
                      style: TextStyle(
                        color: const Color.fromARGB(179, 116, 115, 115),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 16,
                      ),
                      labelText: 'Email',
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.black26,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9),
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 16,
                      ),
                      labelText: 'Password',
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.black26,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.white,
                        ),
                        onPressed: _toggleVisibility,
                      ),
                    ),

                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: <Widget>[
                      Checkbox(
                        value: _isChecked,
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                        activeColor: Colors.purple, // Tick mark color
                        checkColor: Colors.white, // Background color of tick
                        side: BorderSide(
                          color: Colors.white, // Border color
                          width: 2, // Border width
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            4,
                          ), // Rounded corners
                        ),
                      ),
                      Text(
                        'Remember me',
                        style: TextStyle(
                          color: const Color.fromARGB(179, 116, 115, 115),
                        ),
                      ),
                      Spacer(),
                      // TextButton for "Forget Password"
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForgotPasswordScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Forget Password',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 199, 65, 65),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => VPNMainScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(40),
                      backgroundColor: Color(0xFF6C63FF),

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),

                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Or login with',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      socialLoginButton('assets/images/facebook.png'),
                      SizedBox(width: 20),
                      socialLoginButton('assets/images/google.png'),
                      SizedBox(width: 20),
                      socialLoginButton('assets/images/apple.png'),
                    ],
                  ),

                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
