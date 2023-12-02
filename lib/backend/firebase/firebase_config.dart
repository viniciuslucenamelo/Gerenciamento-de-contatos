import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDST9xk9HGziq53vt96c0mBjeV_3kUmubk",
            authDomain: "mahfashion-oficial.firebaseapp.com",
            projectId: "mahfashion-oficial",
            storageBucket: "mahfashion-oficial.appspot.com",
            messagingSenderId: "703439798127",
            appId: "1:703439798127:web:c487486dd3ab3d4533329a"));
  } else {
    await Firebase.initializeApp();
  }
}
