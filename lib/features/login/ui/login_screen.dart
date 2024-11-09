import 'package:doc_doc/core/theming/styles.dart';
import 'package:doc_doc/core/widgets/app_text_button.dart';
import 'package:doc_doc/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObsecureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back',
              style: TextStyles.font24BlueBold,
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              'We\'re excited to have you back, can\'t wait to\nsee what you\'ve been up to since you last\nlogged in',
              style: TextStyles.font14GreyRegular,
            ),
            SizedBox(
              height: 36.h,
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  const AppTextFormField(hintText: 'Email'),
                  SizedBox(
                    height: 16.h,
                  ),
                  AppTextFormField(
                    hintText: 'Password',
                    isobscureText: isObsecureText,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isObsecureText = !isObsecureText;
                        });
                      },
                      child: Icon(isObsecureText
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                  ),
                  SizedBox(
                    height: 28.h,
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyles.font14BlueRegular,
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  AppTextButton(
                    text: 'Login',
                    textStyle: TextStyles.font16WhiteSemiBold,
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  // const TermsAndConditionText(),
                  SizedBox(
                    height: 40.h,
                  ),
                  // const AlreadyHaveAccountText(),
                ],
              ),
            ),
          ],
        )),
      ),
    ));
  }
}
