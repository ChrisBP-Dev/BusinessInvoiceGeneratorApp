import 'package:business_invoice_generator_app/src/core/commom_widgets/admin/wrapper_list.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/custom_appbar.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/primary_action_button.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/responsive_center.dart';
import 'package:business_invoice_generator_app/src/core/commom_widgets/secondary_action_button.dart';
import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/core/consts/breakpoints.dart';
import 'package:business_invoice_generator_app/src/core/utils/async_value_ui.dart';
import 'package:business_invoice_generator_app/src/features/auth/presentation/controllers/auth_controller.dart';
import 'package:business_invoice_generator_app/src/features/auth/presentation/widgets/sign_in_form_field.dart';
import 'package:business_invoice_generator_app/src/routing/routes/auth/auth_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SignInPage extends ConsumerStatefulWidget {
  const SignInPage({super.key});

  @override
  ConsumerState<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends ConsumerState<SignInPage> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (_formKey.currentState!.validate()) {
      await ref
          .read(authControllerProvider.notifier)
          .signInWithEmailAndPassword(
            _emailController.text,
            _passwordController.text,
          );
    }
  }

  Future<void> _resetPassword() async {
    final emailController = TextEditingController();

    try {
      final result = await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Reset Password'),
          content: SizedBox(
            width: 300,
            child: SignInFormField(
              formType: SignInFormType.email,
              controller: emailController,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => context.pop(false),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => context.pop(true),
              child: const Text('Send'),
            ),
          ],
        ),
      );

      if ((result ?? false) && mounted) {
        await ref
            .read(authControllerProvider.notifier)
            .resetPassword(emailController.text);
      }
    } finally {
      emailController.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue<void>>(
      authControllerProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );

    final isLoading = ref.watch(authControllerProvider).isLoading;

    return Material(
      child: SafeArea(
        child: WrapperList(
          appBarWidget:
              const CustomAppbar(title: 'Sign In', withBackButton: false),
          listWidget: ResponsiveCenter(
            maxContentWidth: Breakpoint.mobile,
            padding: const EdgeInsets.all(Sizes.globalPadding),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SignInFormField(
                    formType: SignInFormType.email,
                    controller: _emailController,
                  ),
                  SignInFormField(
                    formType: SignInFormType.password,
                    controller: _passwordController,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      key: const Key('forgotPasswordButton'),
                      onPressed: isLoading ? null : _resetPassword,
                      child: const Text('Forgot your password?'),
                    ),
                  ),
                  gapH20,
                  PrimaryActionButton(
                    key: const Key('signInButton'),
                    text: 'Sign In',
                    isLoading: isLoading,
                    onTap: _submit,
                  ),
                  gapH20,
                  SecondaryActionButton(
                    key: const Key('signUpButton'),
                    text: 'Sign Up',
                    isLoading: isLoading,
                    onTap: () => context.goNamed(AuthRoute.signUp.name),
                  ),
                  gapH20,
                  // TODO: Add this back in when we have a guest user feature
                  // SecondaryActionButton(
                  //   text: 'Continue as Guest',
                  //   isLoading: isLoading,
                  //   onTap: () {
                  //     ref
                  //         .read(authControllerProvider.notifier)
                  //         .signInAnonymously();
                  //   },
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
