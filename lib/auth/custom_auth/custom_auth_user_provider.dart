import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class PaynestAuthUser {
  PaynestAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<PaynestAuthUser> paynestAuthUserSubject =
    BehaviorSubject.seeded(PaynestAuthUser(loggedIn: false));
Stream<PaynestAuthUser> paynestAuthUserStream() => paynestAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
