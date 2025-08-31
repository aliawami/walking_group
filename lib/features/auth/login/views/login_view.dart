import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:walking_group/components/components.dart';
import 'package:walking_group/components/const_value/paddings/padding.dart';

import 'package:walking_group/features/auth/base/auth_keys.dart';
import 'package:walking_group/features/auth/login/services/login_service.dart';

class LoginView extends ConsumerStatefulWidget {
  const LoginView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isLoading = false;

  @override
  void initState() {
    emailController.text = "alis2012@gmail.com";
    // 'aliawami@protonmail.com'; //'aliawami@protonmail.com';
    passwordController.text = '!234WaheeD\$';
    // emailController.text = 'admin@admin';
    // passwordController.text = 'adminadmin';
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    // emailController.dispose();
    // passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(loginServiceProvider, (pre, next) {
      if (next.value != null) {
        switch (next.value!) {
          case AuthKeys.unauthenticated:
            if (isLoading) {
              isLoading = false;
              context.pop();
            }
            showDialog(
              context: context,
              builder: (BuildContext context) => ErrorDialog(
                errorMessage: 'Your authentication failed',
              ),
            );
          case AuthKeys.unauthorized:
            showDialog(
              context: context,
              builder: (BuildContext context) => ErrorDialog(
                errorMessage: 'You are not autherized to use this service',
              ),
            );
          case AuthKeys.authorized:
          case AuthKeys.authenticated:
            if (isLoading) {
              isLoading = false;
              context.pop();
            }

            context.go('/home');
          default:
        }
        // if (next.value! == AuthKeys.authorized) {
        //   isLoading = false;

        //   context.go('/home');
        // }
      }

      if (next.hasError && !next.isLoading) {
        if (isLoading) {
          isLoading = false;
          context.pop();
        }
        showDialog(
          context: context,
          builder: (BuildContext context) => ErrorDialog(
            error: next.error,
          ),
        );
      }

      if (next.isLoading) {
        isLoading = true;
        showLoadingDialog(context: context);
      }
    });

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  RequiredTextField(
                    controller: emailController,
                    hint: 'Email',
                  ),
                  RequiredTextField(
                    controller: passwordController,
                    hint: 'Password',
                    obscureText: true,
                  ),
                ],
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: padding8H,
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            emailController.clear();
                            passwordController.clear();
                          });
                        },
                        child: Text(
                          'Clear',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: padding8H,
                      child: FilledButton(
                        onPressed: () {
                          if (emailController.text.isNotEmpty &&
                              passwordController.text.isNotEmpty) {
                            ref.read(loginServiceProvider.notifier).basicSignIn(
                                  email: emailController.text,
                                  password: passwordController.text,
                                );
                          }
                        },
                        child: Text(
                          'Login',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  context.go('/signup');
                },
                child: Text(
                  'SignUp',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
