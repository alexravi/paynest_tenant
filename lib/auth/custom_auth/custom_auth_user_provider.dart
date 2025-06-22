import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class PaynestAuthUser {
  PaynestAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<PaynestAuthUser> paynestAuthUserSubject =
    BehaviorSubject.seeded(PaynestAuthUser(loggedIn: false));
Stream<PaynestAuthUser> paynestAuthUserStream() => paynestAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
