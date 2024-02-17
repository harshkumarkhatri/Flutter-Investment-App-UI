import 'package:flutter/material.dart';

class ContactInfoScreen extends StatefulWidget {
  const ContactInfoScreen({super.key});

  @override
  State<ContactInfoScreen> createState() => _ContactInfoScreenState();
}

class _ContactInfoScreenState extends State<ContactInfoScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _bdayController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  bool _isNameActive = false;
  bool _isBdayActive = false;
  bool _isGenderActive = false;
  bool _isEmailActive = false;
  bool _isPhoneActive = false;
  bool _isAddressActive = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: const Text(
          "Contact Info",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 48,
            ),
            Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.withOpacity(0.5),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    500,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        "assets/user_profile.png",
                      ),
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(
                            0.4,
                          ),
                        ),
                        child: const Icon(
                          Icons.edit_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            _isNameActive
                ? Padding(
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
                        labelText: "Full name",
                        labelStyle: TextStyle(
                          color: Color(
                            0xff828282,
                          ),
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
                  )
                : _buildInactiveWidget(
                    "Full Name",
                    "Warren Buffet",
                    () {
                      _isNameActive = !_isNameActive;
                      setState(() {});
                    },
                  ),
            const SizedBox(
              height: 36,
            ),
            _isBdayActive
                ? Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: TextFormField(
                      style: const TextStyle(
                        color: Color(
                          0xff828282,
                        ),
                      ),
                      controller: _bdayController,
                      cursorColor: Colors.green,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                          left: 25,
                          top: 20,
                          bottom: 20,
                          right: 25,
                        ),
                        labelText: "Birthdate",
                        labelStyle: TextStyle(
                          color: Color(
                            0xff828282,
                          ),
                        ),
                        hintText: "Birthdate",
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
                  )
                : _buildInactiveWidget(
                    "Birthdate",
                    "05 November 1993",
                    () {
                      _isBdayActive = !_isBdayActive;
                      setState(() {});
                    },
                  ),
            const SizedBox(
              height: 36,
            ),
            _isGenderActive
                ? Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: TextFormField(
                      style: const TextStyle(
                        color: Color(
                          0xff828282,
                        ),
                      ),
                      controller: _genderController,
                      cursorColor: Colors.green,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                          left: 25,
                          top: 20,
                          bottom: 20,
                          right: 25,
                        ),
                        labelText: "Gender",
                        labelStyle: TextStyle(
                          color: Color(
                            0xff828282,
                          ),
                        ),
                        hintText: "Gender",
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
                  )
                : _buildInactiveWidget(
                    "Gender",
                    "Male",
                    () {
                      _isGenderActive = !_isGenderActive;
                      setState(() {});
                    },
                  ),
            const SizedBox(
              height: 36,
            ),
            _isEmailActive
                ? Padding(
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
                        labelText: "Email",
                        labelStyle: TextStyle(
                          color: Color(
                            0xff828282,
                          ),
                        ),
                        hintText: "Email",
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
                  )
                : _buildInactiveWidget(
                    "Email",
                    "warren.buff@invest.ai",
                    () {
                      _isEmailActive = !_isEmailActive;
                      setState(() {});
                    },
                  ),
            const SizedBox(
              height: 36,
            ),
            _isPhoneActive
                ? Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: TextFormField(
                      style: const TextStyle(
                        color: Color(
                          0xff828282,
                        ),
                      ),
                      controller: _phoneController,
                      cursorColor: Colors.green,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                          left: 25,
                          top: 20,
                          bottom: 20,
                          right: 25,
                        ),
                        labelText: "Phone Number",
                        labelStyle: TextStyle(
                          color: Color(
                            0xff828282,
                          ),
                        ),
                        hintText: "Phone Number",
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
                  )
                : _buildInactiveWidget(
                    "Phone Number",
                    "-",
                    () {
                      _isPhoneActive = !_isPhoneActive;
                      setState(() {});
                    },
                    isEditable: false,
                  ),
            const SizedBox(
              height: 36,
            ),
            _isAddressActive
                ? Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: TextFormField(
                      style: const TextStyle(
                        color: Color(
                          0xff828282,
                        ),
                      ),
                      controller: _addressController,
                      cursorColor: Colors.green,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                          left: 25,
                          top: 20,
                          bottom: 20,
                          right: 25,
                        ),
                        labelText: "Address",
                        labelStyle: TextStyle(
                          color: Color(
                            0xff828282,
                          ),
                        ),
                        hintText: "Address",
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
                  )
                : _buildInactiveWidget(
                    "Address",
                    "-",
                    () {
                      _isAddressActive = !_isAddressActive;
                      setState(() {});
                    },
                    isEditable: false,
                  ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInactiveWidget(
    String name,
    String value,
    VoidCallback onTap, {
    bool? isEditable = true,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    value,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              if (isEditable == true)
                InkWell(
                  onTap: onTap,
                  child: const Padding(
                    padding: EdgeInsets.only(right: 15.0),
                    child: Text(
                      "Change",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          const Divider(
            color: Colors.black,
            thickness: 0.3,
          )
        ],
      ),
    );
  }
}
