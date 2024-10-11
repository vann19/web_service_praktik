import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('asset/img/login.jpg',
                height: 200, width: 200), // Image for login
            const SizedBox(height: 20),
            const Text(
              'Login',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  // Action for Forgot Password
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Passing username to HomeScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        HomeScreen(username: _usernameController.text),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow[700],
              ),
              child: const Text('Login', style: TextStyle(color: Colors.black)),
            ),
            const SizedBox(height: 10),
            const Text('Or'),
            GestureDetector(
              onTap: () {
                // Action for Register
              },
              child: const Text(
                'Register',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final String username;

  const HomeScreen({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: const Color.fromARGB(255, 95, 228, 184),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('asset/img/avatar.png'),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Hallo, $username',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Selamat Pagi',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Image.asset('asset/img/banner.webp'), // Banner image
            const SizedBox(height: 20),
            _buildFoodItem('Nasi Ayam', 'Rp10.000', 'asset/img/nasi-ayam.jpeg'),
            _buildFoodItem(
                'Nasi Rendang', 'Rp15.000', 'asset/img/nasi-rendang.jpeg'),
            _buildFoodItem(
                'Gulai Cincang', 'Rp11.000', 'asset/img/gulai-cincang.jpeg'),
          ],
        ),
      ),
    );
  }

  Widget _buildFoodItem(String name, String price, String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      child: Row(
        children: [
          Image.asset(imagePath, height: 50, width: 50),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              Text(price, style: const TextStyle(fontSize: 16)),
            ],
          ),
        ],
      ),
    );
  }
}
