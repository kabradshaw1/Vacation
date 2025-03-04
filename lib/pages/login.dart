import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../providers/auth_provider.dart';
import '../graphql/auth.graphql.dart'; // Ensure correct import for GraphQL mutation

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isLoading = false; // Track loading state

  @override
  Widget build(BuildContext context) {
    final authNotifier = ref.read(authProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: "Email"),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: "Password"),
            ),
            const SizedBox(height: 24),

            Mutation(
              options: MutationOptions(
                document:
                    documentNodeMutationloginMobile, // ✅ Use generated GraphQL mutation
                onCompleted: (dynamic resultData) async {
                  setState(() => isLoading = false); // Stop loading

                  if (resultData != null) {
                    final response = Mutation$loginMobile.fromJson(resultData);
                    final token = response.loginMobile?.token;
                    final refreshToken = response.loginMobile?.refreshToken;

                    if (token != null && refreshToken != null) {
                      await authNotifier.saveAuthState(token, refreshToken);
                    }
                  }
                },
                onError: (error) {
                  setState(() => isLoading = false);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        "Login failed: ${error?.graphqlErrors.first.message}",
                      ),
                    ),
                  );
                },
              ),
              builder: (RunMutation runMutation, QueryResult? result) {
                return ElevatedButton(
                  onPressed:
                      isLoading
                          ? null
                          : () {
                            setState(() => isLoading = true);

                            runMutation({
                              "email": emailController.text,
                              "password": passwordController.text,
                            });
                          },
                  child:
                      isLoading
                          ? const CircularProgressIndicator()
                          : const Text("Login"),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
