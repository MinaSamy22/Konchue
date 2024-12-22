import 'package:flutter/material.dart';
import 'SignupScreen.dart';  // Import the SignupScreen
import 'HomeScreen.dart';  // Import the HomeScreen

class Login_screen extends StatelessWidget {
  const Login_screen({super.key});

  @override
  Widget build(BuildContext context) {
    final Color customColor = Color(0xFF763A12); // #763A12 color

    return Scaffold(
      body: Container(
        // Set the background image here
        height: MediaQuery.of(context).size.height, // Ensure the container covers the full screen height
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/wara2 1.jpg'), // Ensure the image path is correct
            fit: BoxFit.cover, // Ensure the image covers the entire screen
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Placeholder for Illustration
                const SizedBox(height: 50),
                // Ensure the image path is correct
                SizedBox(
                  height: 350,
                  child: Image.asset('assets/images/logo.png'),
                ),
                const SizedBox(height: 0),

                // Title
                Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: customColor,
                  ),
                ),
                const SizedBox(height: 20),

                // Email Field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail, color: customColor),
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Password Field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock, color: customColor),
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                // Login Button
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to the Home Screen
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const HomeScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: customColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),

                // Signup Navigation
                TextButton(
                  onPressed: () {
                    // Navigate to the Signup Screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignupScreen()),
                    );
                  },
                  child: const Text(
                    "Don't have an account? Sign Up",
                    style: TextStyle(color: Color(0xFF763A12)), // Apply custom color here
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
