// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get welcome => 'مرحبا بكم في متجرنا';

  @override
  String get appTitle => 'متجر سبرنتس';

  @override
  String get fullName => 'الاسم الكامل';

  @override
  String get fullNameError => 'يجب أن يبدأ الاسم بحرف كبير';

  @override
  String get email => 'البريد الإلكتروني';

  @override
  String get emailError => 'يجب أن يحتوي البريد على \'@\'';

  @override
  String get password => 'كلمة المرور';

  @override
  String get passwordError => 'يجب ألا تقل كلمة المرور عن 6 أحرف';

  @override
  String get confirmPassword => 'تأكيد كلمة المرور';

  @override
  String get confirmPasswordError => 'يجب أن تتطابق كلمات المرور';

  @override
  String get signUp => 'انشاء حساب';

  @override
  String get signIn => 'تسجيل الدخول';

  @override
  String get accountCreated => 'تم إنشاء الحساب بنجاح';

  @override
  String get accountSignedIn => 'تم تسجيل الدخول بنجاح';

  @override
  String get closeDialog => 'اغلاق';

  @override
  String get ourProducts => 'منتجاتنا';

  @override
  String get hotOffer => 'العروض الساخنة';
}
