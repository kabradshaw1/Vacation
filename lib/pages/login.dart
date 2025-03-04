import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../graphql/auth.graphql.dart'; // Update with the correct path to generated GraphQL files
import '../providers/auth_provider.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: "Email"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your email";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(labelText: "Password"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your password";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              Mutation(
                options: MutationOptions(
                  document:
                      documentNodeMutationloginMobile, // Generated mutation
                  onCompleted: (dynamic resultData) {
                    if (resultData != null) {
                      final authData = Mutation$loginMobile.fromJson(
                        resultData,
                      );
                      final token = authData.loginMobile?.token;
                      final refreshToken = authData.loginMobile?.refreshToken;

                      if (token != null && refreshToken != null) {
                        ref
                            .read(authProvider.notifier)
                            .saveAuthState(
                              refreshToken: refreshToken,
                              authToken: token,
                            );

                        // Navigate to home screen
                        Navigator.pushReplacementNamed(context, "/home");
                      }
                    }
                  },
                  onError: (error) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Login failed: ${error.toString()}"),
                      ),
                    );
                  },
                ),
                builder: (RunMutation runMutation, QueryResult? result) {
                  return ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        runMutation(
                          Variables$Mutation$loginMobile(
                            email: _emailController.text,
                            password: _passwordController.text,
                          ).toJson(),
                        );
                      }
                    },
                    child: const Text("Login"),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
