import 'package:flutter/material.dart';
import 'dart:developer';

class TextFieldPage extends StatefulWidget {
  const TextFieldPage({super.key});

  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TextField',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    hintText: 'Enter full name',
                  ),
                  maxLength: 50,
                ),
                const SizedBox(height: 16),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    hintText: 'Enter phone number',
                    filled: true,
                  ),
                  keyboardType: TextInputType.number,
                  maxLength: 13,
                ),
                const SizedBox(height: 16),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter email address',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.email_rounded,
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  maxLength: 50,
                ),
                const SizedBox(height: 16),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter password',
                    border: const OutlineInputBorder(),
                    prefixIcon: const Icon(
                      Icons.password_rounded,
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.visibility_off_rounded,
                      ),
                      onPressed: () => log('Update password visibility'),
                    ),
                  ),
                  maxLength: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
