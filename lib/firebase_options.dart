// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCBr3IhyKZZO9GWWGqa64NKb-Cl9OBXT8o',
    appId: '1:816262222216:web:cfd8b37694f0233f7bea3d',
    messagingSenderId: '816262222216',
    projectId: 'quotesapp-4378b',
    authDomain: 'quotesapp-4378b.firebaseapp.com',
    storageBucket: 'quotesapp-4378b.appspot.com',
    measurementId: 'G-S1CW9H6279',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCjkw4YUTEwPlngGjidtbyBmf4vGn6AE88',
    appId: '1:816262222216:android:db695ada651c4ce67bea3d',
    messagingSenderId: '816262222216',
    projectId: 'quotesapp-4378b',
    storageBucket: 'quotesapp-4378b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCMziG4LDjX2UEKMRqHoWy_bBxsCrs8oK4',
    appId: '1:816262222216:ios:d6dba13e93dbec467bea3d',
    messagingSenderId: '816262222216',
    projectId: 'quotesapp-4378b',
    storageBucket: 'quotesapp-4378b.appspot.com',
    iosClientId: '816262222216-6ri597rihagh338pg55nt34335udc3fh.apps.googleusercontent.com',
    iosBundleId: 'com.example.quotesApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCMziG4LDjX2UEKMRqHoWy_bBxsCrs8oK4',
    appId: '1:816262222216:ios:d6dba13e93dbec467bea3d',
    messagingSenderId: '816262222216',
    projectId: 'quotesapp-4378b',
    storageBucket: 'quotesapp-4378b.appspot.com',
    iosClientId: '816262222216-6ri597rihagh338pg55nt34335udc3fh.apps.googleusercontent.com',
    iosBundleId: 'com.example.quotesApp',
  );
}
