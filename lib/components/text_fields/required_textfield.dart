import 'package:flutter/material.dart';

class RequiredTextField extends StatefulWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? hint;
  final bool? obscureText;
  final bool checkIfEmpty;
  final String? errorMessage;
  const RequiredTextField({
    this.hint,
    this.controller,
    this.focusNode,
    this.obscureText = false,
    this.checkIfEmpty = true,
    this.errorMessage = 'Field cannot be empty',
    super.key,
  });

  @override
  State<RequiredTextField> createState() => _RequiredTextFieldState();
}

class _RequiredTextFieldState extends State<RequiredTextField> {
  late TextEditingController controller;
  late FocusNode focusNode;
  late bool isEmpty;
  late bool showObsecure;

  @override
  void initState() {
    controller = widget.controller ?? TextEditingController();
    focusNode = widget.focusNode ?? FocusNode();
    if (widget.obscureText! == true) {
      showObsecure = false;
    }
    if (widget.checkIfEmpty) {
      isEmpty = widget.checkIfEmpty;
    } else {
      isEmpty = false;
    }

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      focusNode: focusNode,
      obscureText: widget.obscureText!,
      decoration: InputDecoration(
        hintText: widget.hint ?? 'Password Confirmation',
        helperText: isEmpty ? '' : null,
        errorText:
            isEmpty ? widget.errorMessage ?? 'Field cannot be empty' : null,
        suffixIcon: widget.obscureText!
            ? IconButton(
                onPressed: () {
                  setState(() {
                    showObsecure = !showObsecure;
                  });
                },
                icon: Icon(
                  !showObsecure
                      ? Icons.visibility_rounded
                      : Icons.visibility_off_outlined,
                ),
              )
            : null,
      ),
      onChanged: (value) {
        setState(() {
          if (isEmpty) {
            isEmpty = value.isEmpty;
          }
        });
      },
      onSubmitted: (value) {
        setState(() {
          if (isEmpty) {
            isEmpty = value.isEmpty;
          }
        });
      },
    );
  }
}
