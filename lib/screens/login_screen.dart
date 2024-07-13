import 'package:flutter/material.dart';
import 'package:flutter_assignment_6_property_app/constants/theme_data.dart';
import 'package:icons_plus/icons_plus.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Icon(
                  FontAwesome.heart_pulse_solid,
                  size: 150,
                  color: ThemeColors.primaryVariantColor,
                ),
                const SizedBox(height: 20),
                Text(
                  'Login to Your Account',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: ThemeColors.primaryVariantColor,
                      ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  initialValue: 'andrew_ainsley@yourdomain.com',
                  decoration: const InputDecoration(
                    hintText: 'Email',
                    prefixIcon: Icon(EvaIcons.email_outline),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  initialValue: 'password',
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Icon(EvaIcons.lock),
                  ),
                ),
                const SizedBox(height: 20),
                Material(
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
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ThemeColors.primaryVariantColor,
                    foregroundColor: ThemeColors.white,
                  ),
                  child: const Text('Sign in'),
                ),
                const SizedBox(height: 10),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.transparent,
                  ),
                  onPressed: () {},
                  child: const Text('Forgot Password?'),
                ),
                const SizedBox(height: 10),
                Row(
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
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(FontAwesome.facebook_f_brand),
                      label: const Text('Facebook'),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(FontAwesome.google_brand),
                      label: const Text('Google'),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(FontAwesome.apple_brand),
                      label: const Text('Apple'),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account?'),
                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            color: ThemeColors.blue,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
