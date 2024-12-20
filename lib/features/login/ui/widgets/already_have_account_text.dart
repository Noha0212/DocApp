import 'package:doc_doc/core/theming/styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
            text: 'Already have an account yet?',
            style: TextStyles.font14darkBlueMedium,
          ),
          TextSpan(text: ' Sign Up', style: TextStyles.font14BlueSemiBold),
        ]));
  }
}
