import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAV5tXlKhgsO4GryXyeiSOEvV6JO1FzT_Y",
            authDomain: "blubem-c0a17.firebaseapp.com",
            projectId: "blubem-c0a17",
            storageBucket: "blubem-c0a17.appspot.com",
            messagingSenderId: "362378516740",
            appId: "1:362378516740:web:6abb41df03f40fe3195851",
            measurementId: "G-K70B3Q8ZMR"));
  } else {
    await Firebase.initializeApp();
  }
}
