import 'package:flutter/material.dart';
import 'package:invest_app/core/green_text.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late bool _showPassword;

  @override
  void initState() {
    _nameController = TextEditingController();
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
                const Padding(
                  padding: EdgeInsets.only(
                    left: 20.0,
                    top: 28,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Create an account",
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
                    controller: _nameController,
                    cursorColor: Colors.green,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(
                        left: 25,
                        top: 20,
                        bottom: 20,
                        right: 25,
                      ),
                      hintText: "Full name",
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
                InkWell(
                  onTap: () {
                    // TODO: Add api implementation
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 26,
                    ),
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        16,
                      ),
                      color: const Color(
                        0xff31A062,
                      ),
                    ),
                    child: const Text(
                      "Create account",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                greeText(
                  text: "Already have an account?",
                  onTap: () {
                    // TODO: Add pop and push to login screen
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
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }
}
