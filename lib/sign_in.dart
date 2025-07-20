import 'package:flutter/material.dart';
import 'package:sprints_shopping_app/home_screen.dart';
import 'package:sprints_shopping_app/l10n/app_localizations.dart';

class signIn extends StatefulWidget {
  const signIn({super.key});

  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
  bool hiddenPassword = true;
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(AppLocalizations.of(context)!.signIn),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                controller: emailController,
                validator: (value) {
                  if (value!.isEmpty || !value.contains("@")) {
                    debugPrint("Email is not valid");
                    return AppLocalizations.of(context)!.emailError;
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: AppLocalizations.of(context)!.email,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                controller: passwordController,
                validator: (value) {
                  if (value!.isEmpty || value.length < 6) {
                    print("Password is not valid");
                    return AppLocalizations.of(context)!.passwordError;
                  }
                  return null;
                },
                obscureText: hiddenPassword,
                decoration: InputDecoration(
                  labelText: AppLocalizations.of(context)!.password,
                  suffixIcon: IconButton(
                    onPressed: () {
                      togglePassword();
                    },
                    icon: Icon(
                      hiddenPassword ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  debugPrint(emailController.text);
                  debugPrint(passwordController.text);
                  myDialog();
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                AppLocalizations.of(context)!.signIn,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  togglePassword() {
    hiddenPassword = !hiddenPassword;
    setState(() {});
  }

  Future<void> myDialog() async {
    return showDialog<void>(
      context: context,
      //barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(AppLocalizations.of(context)!.signIn),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(AppLocalizations.of(context)!.accountSignedIn),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(AppLocalizations.of(context)!.closeDialog),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => homeScreen(),
                //   ),
                // );
                Navigator.of(context).pushReplacement(_createFadeRoute());
              },
            ),
          ],
        );
      },
    );
  }
}

Route _createFadeRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const homeScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0); // from bottom to top
      const end = Offset.zero;
      const curve = Curves.easeInOut;

      final tween = Tween(
        begin: begin,
        end: end,
      ).chain(CurveTween(curve: curve));

      return SlideTransition(position: animation.drive(tween), child: child);
    },
    transitionDuration: const Duration(milliseconds: 500),
  );
}
