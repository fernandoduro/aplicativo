import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBH8qirpMrSS0Vh__2FbO6UYNGVUeCIaeg",
            authDomain: "blubem-hml.firebaseapp.com",
            projectId: "blubem-hml",
            storageBucket: "blubem-hml.firebasestorage.app",
            messagingSenderId: "692619462360",
            appId: "1:692619462360:web:72850fb215103b0c93b9ad",
            measurementId: "G-ZPQE1MMXF6"));
  } else {
    await Firebase.initializeApp();
  }
}
