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

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key});

  @override
  ConsumerState<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final TextEditingController _confirmPasswordController;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (_formKey.currentState!.validate()) {
      await ref
          .read(authControllerProvider.notifier)
          .signUpWithEmailAndPassword(
            _emailController.text,
            _passwordController.text,
          );
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
      child: WrapperList(
        appBarWidget: const CustomAppbar(
          title: 'Sign Up',
          withBackButton: false,
        ),
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
                SignInFormField(
                  formType: SignInFormType.confirmPassword,
                  controller: _confirmPasswordController,
                  validator: (value) {
                    if (value != _passwordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                ),
                gapH20,
                PrimaryActionButton(
                  text: 'Sign Up',
                  isLoading: isLoading,
                  onTap: _submit,
                ),
                gapH20,
                SecondaryActionButton(
                  text: 'Already have an account? Sign In',
                  isLoading: isLoading,
                  onTap: () => context.goNamed(AuthRoute.signIn.name),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
