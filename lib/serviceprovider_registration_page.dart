import 'dart:ui';

import 'package:flutter/material.dart';

class ServiceProviderRegistrationPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _availabilityController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();
  final TextEditingController _physicalAddressController =
      TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _specialityController = TextEditingController();

  bool _showPassword = false;

  ServiceProviderRegistrationPage({super.key});

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
                  height: 500.0,
                  width: 600.0,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              TextFormField(
                                controller: _fullNameController,
                                decoration: const InputDecoration(
                                  labelText: 'Full Name',
                                  icon: Icon(Icons.person),
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
                                controller: _availabilityController,
                                decoration: const InputDecoration(
                                    labelText: 'Availability',
                                    icon: Icon(Icons.location_history)),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your Availability';
                                  }
                                  return null;
                                },
                              ),
                              TextFormField(
                                controller: _specialityController,
                                decoration: const InputDecoration(
                                    labelText: 'Speciality',
                                    icon: Icon(Icons.task)),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your Speciality';
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
                ),
              ),
            ),
          ),
        ));
  }
}
