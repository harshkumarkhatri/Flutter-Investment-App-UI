import 'package:flutter/material.dart';
import 'package:invest_app/create_account_screen.dart';

import 'bottombar_switching_screen.dart';
import 'core/create_account_button.dart';
import 'core/green_text.dart';

class LoginAccountScreen extends StatefulWidget {
  const LoginAccountScreen({super.key});

  @override
  State<LoginAccountScreen> createState() => _LoginAccountScreenState();
}

class _LoginAccountScreenState extends State<LoginAccountScreen> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late bool _showPassword;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();

    _showPassword = true;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SafeArea(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    top: 28,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 18,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    height: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "Invest and double your income now",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: TextFormField(
                    style: const TextStyle(
                      color: Color(
                        0xff828282,
                      ),
                    ),
                    controller: _emailController,
                    cursorColor: Colors.green,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(
                        left: 25,
                        top: 20,
                        bottom: 20,
                        right: 25,
                      ),
                      hintText: "Email address",
                      hintStyle: TextStyle(
                        color: Color(
                          0xff828282,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            24.0,
                          ),
                        ),
                        borderSide: BorderSide(
                          color: Color(0xff31A062),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            24.0,
                          ),
                        ),
                        borderSide: BorderSide(color: Color(0xff828282)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: TextFormField(
                    style: const TextStyle(
                      color: Color(
                        0xff828282,
                      ),
                    ),
                    controller: _passwordController,
                    cursorColor: Colors.green,
                    obscureText: _showPassword,
                    decoration: InputDecoration(
                      suffixIcon: InkWell(
                        onTap: () {
                          _showPassword = !_showPassword;
                          setState(() {});
                        },
                        child: Icon(
                          _showPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: const Color(
                            0xff828282,
                          ),
                        ),
                      ),
                      contentPadding: const EdgeInsets.only(
                        left: 25,
                        top: 20,
                        bottom: 20,
                        right: 25,
                      ),
                      hintText: "Password",
                      hintStyle: const TextStyle(
                        color: Color(
                          0xff828282,
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            24.0,
                          ),
                        ),
                        borderSide: BorderSide(
                          color: Color(0xff31A062),
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            24.0,
                          ),
                        ),
                        borderSide: BorderSide(color: Color(0xff828282)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                createAccountButton(
                  text: "Login",
                  context: context,
                  onTap: () {
                    // TODO: Add api implementation
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const BottombarSwitchingScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                greeText(
                  text: "Create an account",
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const CreateAccountScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }
}
