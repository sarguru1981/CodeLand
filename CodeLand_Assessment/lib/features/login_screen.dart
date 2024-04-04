import 'package:flutter/material.dart';
import '../theme/AppStyle.dart';
import '../widget/custom_button.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/title_image.png'),
                    Image.asset('assets/images/logo_image.png'),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Text(
                        "Biomedical Kiosk",
                        style: AppTextStyles.biomedicalKiosk,
                      ),
                    ),
                    _buildLoginForm("Username", isPassword: false, controller: usernameController),
                    _buildLoginForm("Password", isPassword: true, controller: passwordController),
                    Padding(
                      padding: const EdgeInsets.only(top: 27.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: Row(
                          children: [
                            Expanded(
                              child: ButtonWidget(
                                textValue: "Login",
                                width: double.infinity,
                                height: 56,
                                backgroundColor: const Color(0xFFF68326),
                                textColor: Colors.white,
                                textStyle: AppTextStyles.loginText,
                                shadowHeight: 0.25,
                                onPressed: () {
                                  if (usernameController.text.isEmpty ||
                                      passwordController.text.isEmpty) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text("Enter the Username and Password"),
                                      ),
                                    );
                                  } else {
                                    Navigator.pushReplacementNamed(context, '/image_pick');
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 56.0, left: 4),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "For Assistance & Login Details Contact: ",
                          style: AppTextStyles.bottomText,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 4),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: _buildContactDetails(
                            'English, Kannada & Telugu :  ', '7406333800'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 4),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: _buildContactDetails(
                            'English, Kannada & Hindi    :  ', '9071386515'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "v1.7 © 2023, Codeland Infosolutions Pvt Ltd.",
              style: AppTextStyles.bottomText,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginForm(String textValue, {required bool isPassword, required TextEditingController controller}) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Container(
        height: 56,
        padding: const EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xFF887E7E), width: 1),
        ),
        child: TextField(
          controller: controller,
          obscureText: isPassword,
          textAlignVertical: TextAlignVertical.center,
          style: AppTextStyles.titleText,
          decoration: InputDecoration(
            hintText: textValue,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  Widget _buildContactDetails(String textValue1, String textValue2) {
    return RichText(
      text: TextSpan(
        style: AppTextStyles.bottomText,
        children: [
          TextSpan(
            text: textValue1,
          ),
          TextSpan(
            text: textValue2,
            style: AppTextStyles.bottomText
                .copyWith(color: const Color(0xFFF68326)),
          ),
        ],
      ),
    );
  }
}
