import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class BlubemAuthUser {
  BlubemAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<BlubemAuthUser> blubemAuthUserSubject =
    BehaviorSubject.seeded(BlubemAuthUser(loggedIn: false));
Stream<BlubemAuthUser> blubemAuthUserStream() =>
    blubemAuthUserSubject.asBroadcastStream().map((user) => currentUser = user);
