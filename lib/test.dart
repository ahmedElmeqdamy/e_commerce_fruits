// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
//
// class GoogleSignInDemo extends StatefulWidget {
//   const GoogleSignInDemo({super.key});
//
//   @override
//   State<GoogleSignInDemo> createState() => _GoogleSignInDemoState();
// }
//
// class _GoogleSignInDemoState extends State<GoogleSignInDemo> {
//   User? _user;
//
//   Future<void> _signInWithGoogle() async {
//     try {
//       // تأكد إن الـ instance متاح
//       if (GoogleSignIn.instance.supportsAuthenticate()) {
//         // افتح شاشة تسجيل الدخول
//         await GoogleSignIn.instance.authenticate(scopeHint: ['email']);
//       }
//
//       // هات الـ user اللي سجل دلوقتي
//       final googleUser = GoogleSignIn.instance.currentUser;
//
//       if (googleUser == null) return;
//
//       // هات الـ tokens (access + id)
//       final auth = await googleUser.authentication;
//
//       // اعمل credential خاص بـ Firebase
//       final credential = GoogleAuthProvider.credential(
//         accessToken: auth.accessToken,
//         idToken: auth.idToken,
//       );
//
//       // سجل دخول بـ Firebase
//       final userCredential =
//       await FirebaseAuth.instance.signInWithCredential(credential);
//
//       setState(() {
//         _user = userCredential.user;
//       });
//     } catch (e) {
//       print("Google Sign-In error: $e");
//     }
//   }
//
//   Future<void> _signOut() async {
//     await FirebaseAuth.instance.signOut();
//     await GoogleSignIn.instance.signOut();
//
//     setState(() {
//       _user = null;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Google Sign-In Example")),
//       body: Center(
//         child: _user == null
//             ? ElevatedButton(
//           onPressed: _signInWithGoogle,
//           child: Text("Sign in with Google"),
//         )
//             : Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Signed in as: ${_user!.displayName}"),
//             ElevatedButton(
//               onPressed: _signOut,
//               child: Text("Sign Out"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
