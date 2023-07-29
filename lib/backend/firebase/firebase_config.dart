import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAyMLNaZ-QAMlHxmXDq2BtMCRz_SO9ndfI",
            authDomain: "pizza-70340.firebaseapp.com",
            projectId: "pizza-70340",
            storageBucket: "pizza-70340.appspot.com",
            messagingSenderId: "54879031630",
            appId: "1:54879031630:web:07be0c06a91c0fb3ad8e1f",
            measurementId: "G-0X3M9YW42G"));
  } else {
    await Firebase.initializeApp();
  }
}
