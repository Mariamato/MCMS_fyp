import 'dart:ui';

import 'package:flutter/material.dart';
import 'resident_login_page.dart';

class MunicipalityRegistrationPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _municipalityNameController =
      TextEditingController();
  final TextEditingController _contactController = TextEditingController();

  bool _showPassword = false;

  void _register(BuildContext context) {
    // Add registration functionality here
  }

  void _togglePasswordVisibility() {
    _showPassword = !_showPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Jisajili hapa'),
        ),
        body: Container(
          height: 10000.0,
        width: 10000.0,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/homepage.jpeg'), fit: BoxFit.cover),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: SizedBox(
                  height: 450.0,
                  width: 600.0,
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SingleChildScrollView(
                            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  TextFormField(
                                    controller: _municipalityNameController,
                                    decoration: const InputDecoration(
                                      labelText: 'Municipality Name',
                                      icon: Icon(Icons.location_city_rounded),
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter your Name';
                                      }
                                      return null;
                                    },
                                  ),
                                  TextFormField(
                                    controller: _emailController,
                                    decoration: const InputDecoration(
                                      labelText: 'Email',
                                      icon: Icon(Icons.email),
                                    ),
                                    keyboardType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter your email';
                                      }
                                      return null;
                                    },
                                  ),
                                  const SizedBox(height: 16.0),
                                  TextFormField(
                                    controller: _passwordController,
                                    decoration: InputDecoration(
                                      labelText: 'Password',
                                      icon: const Icon(Icons.lock),
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          _showPassword
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                        ),
                                        onPressed: _togglePasswordVisibility,
                                      ),
                                    ),
                                    obscureText: !_showPassword,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter your password';
                                      }
                                      return null;
                                    },
                                  ),
                                  TextFormField(
                                    controller: _passwordController,
                                    decoration: const InputDecoration(
                                      labelText: 'Confirm password',
                                      icon: Icon(Icons.lock),
                                    ),
                                    obscureText: !_showPassword,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Password entered does not match';
                                      }
                                      return null;
                                    },
                                  ),
                                  TextFormField(
                                    controller: _contactController,
                                    decoration: const InputDecoration(
                                        labelText: 'Phone Number',
                                        icon: Icon(Icons.phone_rounded)),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter your Name';
                                      }
                                      return null;
                                    },
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.all(15.0),
                                    alignment: Alignment.topCenter,
                                    child: ElevatedButton(
                                      child: const Text('Register'),
                                      onPressed: () => _register(context),
                                    ),
                                  )
                                ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
