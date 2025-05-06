import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:walking_group/components/components.dart';
import 'package:walking_group/components/const_value/paddings/padding.dart';
import 'package:walking_group/features/auth/base/auth_keys.dart';
import 'package:walking_group/features/auth/signup/services/signup_service.dart';

class SignupView extends ConsumerStatefulWidget {
  const SignupView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignupViewState();
}

class _SignupViewState extends ConsumerState<SignupView> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final passworConfirmationController = TextEditingController();

  final usernameFocus = FocusNode();
  final passwordFocus = FocusNode();
  final passwordConfirmFocus = FocusNode();

  bool isUsernameEmpty = false;
  bool isPasswordEmpty = false;
  bool isPasswordConfirmEmpty = false;
  bool passwordMatch = true;

  bool showPassword = false;
  bool showPasswordConfirm = false;

  bool isLoading = false;

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    passworConfirmationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(signupServiceProvider, (pre, next) {
      if (next.value != null) {
        if (next.value == AuthKeys.signedup) {
          if (isLoading) {
            isLoading = false;
            context.pop();
          }
          showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                    content: SingleChildScrollView(
                      child: Column(
                        children: [
                          Text(
                            'Your account has been created',
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: TextButton(
                                  onPressed: () {
                                    context.pop();
                                    context.go('/');
                                  },
                                  child: Text(
                                    'OK',
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ));
        }
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
            Column(
              children: [
                TextField(
                  controller: usernameController,
                  focusNode: usernameFocus,
                  decoration: InputDecoration(
                    hintText: 'e-mail',
                    helperText: isUsernameEmpty ? null : '',
                    errorText: isUsernameEmpty ? 'Email cannot be empty' : null,
                  ),
                  onChanged: (value) {
                    setState(() {
                      if (isUsernameEmpty) {
                        isUsernameEmpty = value.isEmpty;
                      }
                    });
                  },
                  onSubmitted: (value) {
                    setState(() {
                      if (isUsernameEmpty) {
                        isUsernameEmpty = value.isEmpty;
                      }
                    });
                  },
                ),
                TextField(
                  controller: passwordController,
                  focusNode: passwordFocus,
                  obscureText: !showPassword,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    helperText: isPasswordEmpty
                        ? null
                        : (passwordController.text !=
                                    passworConfirmationController.text) &&
                                passworConfirmationController.text.isNotEmpty
                            ? null
                            : '',
                    errorText: isPasswordEmpty
                        ? 'Password  cannot be empty'
                        : (passwordController.text !=
                                    passworConfirmationController.text) &&
                                passworConfirmationController.text.isNotEmpty
                            ? 'Entered password did not match'
                            : null,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                      icon: Icon(
                        !showPassword
                            ? Icons.visibility_rounded
                            : Icons.visibility_off_outlined,
                      ),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      if (isPasswordEmpty) {
                        isPasswordEmpty = value.isEmpty;
                      }
                    });
                  },
                  onSubmitted: (value) {
                    setState(() {
                      if (isPasswordEmpty) {
                        isPasswordEmpty = value.isEmpty;
                      }
                    });
                  },
                ),
                TextField(
                  controller: passworConfirmationController,
                  focusNode: passwordConfirmFocus,
                  obscureText: !showPasswordConfirm,
                  decoration: InputDecoration(
                    hintText: 'Password Confirmation',
                    helperText: isPasswordConfirmEmpty
                        ? null
                        : ((passwordController.text !=
                                        passworConfirmationController.text) &&
                                    passwordController.text.isNotEmpty) ||
                                !passwordMatch
                            ? null
                            : '',
                    errorText: isPasswordConfirmEmpty
                        ? 'Password Confirmation cannot be empty'
                        : ((passwordController.text !=
                                        passworConfirmationController.text) &&
                                    passwordController.text.isNotEmpty) ||
                                !passwordMatch
                            ? 'Entered password did not match'
                            : null,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          showPasswordConfirm = !showPasswordConfirm;
                        });
                      },
                      icon: Icon(
                        !showPasswordConfirm
                            ? Icons.visibility_rounded
                            : Icons.visibility_off_outlined,
                      ),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      if (isPasswordConfirmEmpty) {
                        isPasswordConfirmEmpty = value.isEmpty;
                      }
                    });
                  },
                  onSubmitted: (value) {
                    setState(() {
                      if (isPasswordConfirmEmpty) {
                        isPasswordConfirmEmpty = value.isEmpty;
                      }
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Padding(
                    padding: padding10H,
                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          passwordController.clear();
                          passworConfirmationController.clear();
                          usernameController.clear();
                          FocusScope.of(context).unfocus();
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
                    padding: padding10H,
                    child: FilledButton(
                      onPressed: () {
                        final username = usernameController.text;
                        final password = passwordController.text;
                        final passwordConfirm =
                            passworConfirmationController.text;
                        setState(() {
                          if (username.isNotEmpty && password.isNotEmpty) {
                            if (password != passwordConfirm) {
                              passwordMatch = false;
                            } else {
                              ref
                                  .read(signupServiceProvider.notifier)
                                  .signUpUser(
                                    emailAddress: usernameController.text,
                                    password: passwordController.text,
                                  );
                            }
                          } else {
                            isUsernameEmpty = username.isEmpty;
                            isPasswordEmpty = password.isEmpty;
                            isPasswordConfirmEmpty = passwordConfirm.isEmpty;
                          }
                        });
                      },
                      child: Text(
                        'Sign Up',
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
