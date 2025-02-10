import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_chat_frontend/app/logger.dart';
import 'package:weather_chat_frontend/presentations/auth/login_page.dart';
import 'package:weather_chat_frontend/providers/auth/auth_provider.dart';
import 'package:weather_chat_frontend/utils/helpers/helper_function.dart';
import 'package:weather_chat_frontend/utils/widgets/input_field.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  RegisterScreenState createState() => RegisterScreenState();
}

class RegisterScreenState extends ConsumerState<RegisterScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _ageController = TextEditingController();
  final _usernameController = TextEditingController();

  late BuildContext dialogContext;

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authStateProvider);
    final authNotifier = ref.read(authStateProvider.notifier);

    void handleAuthState() {
      final authState = ref.watch(authStateProvider);

      if (authState.errorMessage != null) {
        // Show error message
        HelperFunction.showSnackBar(
          message: authState.errorMessage,
          context: context,
          isError: true,
        );
      } else {
        // Show success message and navigate to HomeScreen
        HelperFunction.showSnackBar(
          message: "🎉 Register Success!",
          context: context,
        );

        // Navigate to loginScreen after successful registration
        if (context.mounted) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            ),
          );
        }
      }
    }

    void register() async {
      try {
        // Register the user
        await authNotifier.register(
          _emailController.text,
          _passwordController.text,
          _usernameController.text,
          int.parse(_ageController.text),
        );

        // Handle auth state after registration
        handleAuthState();
      } on Exception catch (e) {
        logger.e("$e");
      }
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'Register',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Create an account, it\'s free',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        InputField(
                            label: 'Username', controller: _usernameController),
                        InputField(
                            label: 'Email', controller: _emailController),
                        InputField(
                          label: 'age',
                          controller: _ageController,
                          isNumberOnly: true,
                        ),
                        InputField(
                          label: 'Password',
                          controller: _passwordController,
                          obscureText: true,
                        ),
                        InputField(
                          label: 'Confirm Password',
                          controller: _confirmPasswordController,
                          obscureText: true,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                      padding: EdgeInsets.only(top: 3, left: 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border(
                          bottom: BorderSide(color: Colors.black),
                          top: BorderSide(color: Colors.black),
                          left: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                        ),
                      ),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        color: Color(0xff0095ff),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        onPressed: authState.isLoading ? null : register,
                        child: authState.isLoading
                            ? CircularProgressIndicator()
                            : Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?"),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ));
                        },
                        child: Text(
                          ' Sign in',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
