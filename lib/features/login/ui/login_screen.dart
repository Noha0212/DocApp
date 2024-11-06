import 'package:doc_doc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
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
            Form(key: formKey, child: Column())
          ],
        )),
      ),
    ));
  }
}
