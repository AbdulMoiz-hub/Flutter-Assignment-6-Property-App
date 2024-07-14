import 'package:flutter/material.dart';
import 'package:flutter_assignment_6_property_app/constants/theme_data.dart';
import 'package:flutter_assignment_6_property_app/helpers/gap.dart';
import 'package:flutter_assignment_6_property_app/routes/route_path.dart';
import 'package:icons_plus/icons_plus.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late ThemeColors themeColors;
  @override
  Widget build(BuildContext context) {
    double height20 = 20;
    themeColors = ThemeColors.getThemeColors(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _topIcon(),
                vGap(height20),
                _loginText(context),
                vGap(height20),
                _inputTextFormField(),
                vGap(height20),
                _passwordTextFormField(),
                vGap(height20),
                _rememberMeCheckBox(context),
                vGap(height20),
                _signinButton(),
                vGap(height20),
                _forgotPasswordButton(),
                vGap(height20),
                _dividerWithCenterText(context),
                vGap(height20),
                _socialMediaLoginButtons(),
                vGap(height20),
                _redirectToSignupText()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Text _loginText(BuildContext context) {
    return Text(
      'Login to Your Account',
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headlineLarge!.copyWith(
            fontWeight: FontWeight.bold,
            color: themeColors.primaryVariantColor,
          ),
    );
  }

  Icon _topIcon() {
    return Icon(
      FontAwesome.heart_pulse_solid,
      size: 150,
      color: themeColors.primaryVariantColor,
    );
  }

  Row _redirectToSignupText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account?',
          style: TextStyle(
            color: themeColors.textColor,
          ),
        ),
        InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Sign up',
              style: TextStyle(
                color: themeColors.primaryVariantColor,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row _socialMediaLoginButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton.filled(
          onPressed: () {},
          icon: const Icon(FontAwesome.facebook_f_brand),
        ),
        IconButton.filled(
          onPressed: () {},
          icon: const Icon(FontAwesome.google_brand),
        ),
        IconButton.filled(
          onPressed: () {},
          icon: const Icon(FontAwesome.apple_brand),
        ),
      ],
    );
  }

  Row _dividerWithCenterText(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Expanded(child: Divider()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "Or Continue With",
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
        const Expanded(child: Divider()),
      ],
    );
  }

  TextButton _forgotPasswordButton() {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.transparent,
      ),
      onPressed: () {},
      child: const Text('Forgot Password?'),
    );
  }

  ElevatedButton _signinButton() {
    return ElevatedButton(
      onPressed: () {
        Navigator.popAndPushNamed(context, RoutePath.home);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: themeColors.primaryVariantColor,
        foregroundColor: themeColors.primaryColor,
      ),
      child: const Text('Sign in'),
    );
  }

  Material _rememberMeCheckBox(BuildContext context) {
    return Material(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: CheckboxListTile(
        value: true,
        controlAffinity: ListTileControlAffinity.leading,
        title: Text(
          'Remember me',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        onChanged: (_) {},
      ),
    );
  }

  TextFormField _passwordTextFormField() {
    return TextFormField(
      initialValue: 'password',
      obscureText: true,
      decoration: const InputDecoration(
        hintText: 'Password',
        prefixIcon: Icon(EvaIcons.lock),
      ),
    );
  }

  TextFormField _inputTextFormField() {
    return TextFormField(
      initialValue: 'andrew_ainsley@yourdomain.com',
      decoration: const InputDecoration(
        hintText: 'Email',
        prefixIcon: Icon(EvaIcons.email_outline),
      ),
    );
  }
}
