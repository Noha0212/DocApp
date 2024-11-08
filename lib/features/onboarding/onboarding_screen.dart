import 'package:doc_doc/core/theming/styles.dart';
import 'package:doc_doc/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:doc_doc/features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:doc_doc/features/onboarding/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          top: 30.h,
          bottom: 30.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const DocLogoAndName(),
              SizedBox(
                height: 30.h,
              ),
              const DoctorImageAndText(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.w),
                child: Column(
                  children: [
                    Text(
                      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                      style: TextStyles.font14GreyRegular,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    const GetStartedButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
