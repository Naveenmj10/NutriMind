import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nutri_mind/presentation/view_model/create_account/create_account_view_state.dart';
import '../../../../domain/services/connectivity_service.dart';
import '../../../../foundation/abstracts/base_view_model.dart';
import '../../../domain/services/navigation_service.dart';

class CreateAccountViewModel extends ViewModel<CreateAccountViewModel, CreateAccountViewState> {
  ///
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  ///
  final NavigationService navigationService;

  CreateAccountViewModel({required this.navigationService})
      : super(CreateAccountViewState.init()) {
    init();
  }

  ///
  void init() async {
    ///
    listenToConnectivity();
  }

  /// Validate full name
  /// Returns true if name is at least 3 characters long
  bool validateFullName(String name) {
    final trimmedName = name.trim();
    return trimmedName.length >= 3;
  }

  /// Validate email address
  /// Returns true if email matches standard email pattern
  bool validateEmail(String email) {
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    return emailRegex.hasMatch(email.trim());
  }

  /// Validate password
  /// Returns true if password is at least 8 characters long
  /// You can add more complex validation rules as needed
  bool validatePassword(String password) {
    return password.length >= 8;
  }

  /// Validate password with comprehensive rules
  /// Returns a map with validation status and error message
  Map<String, dynamic> validatePasswordComprehensive(String password) {
    if (password.length < 8) {
      return {
        'isValid': false,
        'message': 'Password must be at least 8 characters long'
      };
    }

    // Check for at least one uppercase letter
    if (!password.contains(RegExp(r'[A-Z]'))) {
      return {
        'isValid': false,
        'message': 'Password must contain at least one uppercase letter'
      };
    }

    // Check for at least one lowercase letter
    if (!password.contains(RegExp(r'[a-z]'))) {
      return {
        'isValid': false,
        'message': 'Password must contain at least one lowercase letter'
      };
    }

    // Check for at least one number
    if (!password.contains(RegExp(r'[0-9]'))) {
      return {
        'isValid': false,
        'message': 'Password must contain at least one number'
      };
    }

    return {'isValid': true, 'message': 'Password is valid'};
  }

  /// Validate all form fields
  /// Returns true if all fields are valid
  bool validateAllFields(String name, String email, String password) {
    return validateFullName(name) &&
        validateEmail(email) &&
        validatePassword(password);
  }

  /// Handle account creation
  Future<void> createAccount({
    required String fullName,
    required String email,
    required String password,
  }) async {
    try {
      // Update state to loading
        setState(state.copyWith(isLoading: true));
      // Validate all fields
      if (!validateAllFields(fullName, email, password)) {

        setState(state.copyWith(isLoading: false));
        return;
      }

      // TODO: Implement actual account creation logic
      // This is where you would call your authentication service
      // await authService.createAccount(fullName, email, password);

      // Simulate API call
      await Future.delayed(const Duration(seconds: 2));

      // Update state to success
      // updateState(state.copyWith(
      //   isLoading: false,
      //   isSuccess: true,
      //   errorMessage: null,
      // ));
      //
      // Navigate to next screen if needed
      // await handleNavigationToScanResultsScreen();

    } catch (e) {
      // Handle error
      // updateState(state.copyWith(
      //   isLoading: false,
      //   errorMessage: 'Failed to create account: ${e.toString()}',
      // ));
    }
  }

  /// Handle Google Sign In
  Future<void> signInWithGoogle() async {
    try {
      // updateState(state.copyWith(isLoading: true, errorMessage: null));

      // TODO: Implement Google Sign In logic
      // await authService.signInWithGoogle();

      await Future.delayed(const Duration(seconds: 1));

      // updateState(state.copyWith(
      //   isLoading: false,
      //   isSuccess: true,
      // ));

    } catch (e) {
      // updateState(state.copyWith(
      //   isLoading: false,
      //   errorMessage: 'Google Sign In failed: ${e.toString()}',
      // ));
    }
  }

  /// Handle Apple Sign In
  Future<void> signInWithApple() async {
    try {
      // updateState(state.copyWith(isLoading: true, errorMessage: null));

      // TODO: Implement Apple Sign In logic
      // await authService.signInWithApple();

      await Future.delayed(const Duration(seconds: 1));

      // updateState(state.copyWith(
      //   isLoading: false,
      //   isSuccess: true,
      // ));

    } catch (e) {
      // updateState(state.copyWith(
      //   isLoading: false,
      //   errorMessage: 'Apple Sign In failed: ${e.toString()}',
      // ));
    }
  }

  Future<void> handleNavigationToCreateAccountScreen() async {
    navigationService.navigateToCreateAccountScreen();
  }
}