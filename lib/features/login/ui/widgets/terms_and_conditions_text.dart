import 'package:doc_doc/core/theming/styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: TextStyles.font14GreyRegular,
          ),
          TextSpan(
            text: '  Terms & Conditions',
            style: TextStyles.font14darkBlueMedium,
          ),
          TextSpan(
            text: ' and',
            style: TextStyles.font14GreyRegular.copyWith(height: 1.5),
          ),
          TextSpan(
            text: ' PrivacyPolicy.',
            style: TextStyles.font14darkBlueMedium,
          ),
        ]));
  }
}
