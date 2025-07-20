// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get welcome => 'Welcome to our store!';

  @override
  String get appTitle => 'Sprints Shop';

  @override
  String get fullName => 'Full Name';

  @override
  String get fullNameError => 'First letter must be uppercase';

  @override
  String get email => 'Email';

  @override
  String get emailError => 'Email must include \'@\'';

  @override
  String get password => 'Password';

  @override
  String get passwordError => 'Password must be at least 6 characters';

  @override
  String get confirmPassword => 'Confirm Password';

  @override
  String get confirmPasswordError => 'Passwords must match';

  @override
  String get signUp => 'Sign Up';

  @override
  String get signIn => 'Sign In';

  @override
  String get accountCreated => 'Account created successfully';

  @override
  String get accountSignedIn => 'Account signed in successfully';

  @override
  String get closeDialog => 'Close';

  @override
  String get ourProducts => 'Our Products';

  @override
  String get hotOffer => 'Hot Offers';
}
