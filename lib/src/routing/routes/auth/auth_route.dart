import 'package:business_invoice_generator_app/src/features/auth/presentation/sign_in_page.dart';
import 'package:business_invoice_generator_app/src/features/auth/presentation/sign_up_page.dart';
import 'package:business_invoice_generator_app/src/features/business/presentation/create_business_page.dart';
import 'package:flutter/material.dart';

/// Authentication routes
enum AuthRoute {
  /// Sign In
  signIn('/sign-in', SignInPage()),

  /// Sign Up
  signUp('/sign-up', SignUpPage()),

  /// Create Business
  createBusiness('/create-business', CreateBusinessPage());

  const AuthRoute(this.path, this.page);

  final String path;
  final Widget page;
}
