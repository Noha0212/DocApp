import 'package:doc_doc/core/helpers/extensions.dart';
import 'package:doc_doc/core/routing/routes.dart';
import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          context.pushNamed(Routes.logInScreen);
        },
        style: ButtonStyle(
          backgroundColor:
              const WidgetStatePropertyAll(ColorsManager.primaryBlue),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: WidgetStateProperty.all(
            const Size(double.infinity, 52),
          ),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        child: Text(
          'Get Started',
          style: TextStyles.font16White600weight,
          textAlign: TextAlign.center,
        ));
  }
}
