import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthApi {
  // final _googleSignIn = GoogleSignIn(scopes: ['https://mail.google.com/']);
  final _googleSignIn = GoogleSignIn();

  Future<GoogleSignInAccount> signIn() async {
    bool user = await _googleSignIn.isSignedIn();
    if (user) {
      return _googleSignIn.currentUser;
    } else {
      return await _googleSignIn.signIn();
    }
  }

  Future<GoogleSignInAccount> signOut() async {
    return await _googleSignIn.signOut();
  }
}
