import 'package:firebase_auth/firebase_auth.dart';

void sendEmailVerification() async {
  User? user = FirebaseAuth.instance.currentUser;

  if (user != null && !user.emailVerified) {
    await user.sendEmailVerification();

    // You can provide a feedback message or navigate to a verification screen.
    print('Verification email sent to ${user.email}');
  }
}
