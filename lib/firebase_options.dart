// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBYjXR6BwdWls6xld8_Li-nx27uIVno6vI',
    appId: '1:341944596607:web:04a9d69ed995048202e74a',
    messagingSenderId: '341944596607',
    projectId: 'todoapplication-79661',
    authDomain: 'todoapplication-79661.firebaseapp.com',
    storageBucket: 'todoapplication-79661.firebasestorage.app',
    measurementId: 'G-HZ79PWEMCD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBxqLKgsOAs8hDCtvIN4Trxs6Hetp3tqCk',
    appId: '1:341944596607:android:821d3078e7b1f51a02e74a',
    messagingSenderId: '341944596607',
    projectId: 'todoapplication-79661',
    storageBucket: 'todoapplication-79661.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBldQPs8q6lRlgyqtPWXBL6gxydd-Lcw5Q',
    appId: '1:341944596607:ios:12bbee6319d4482102e74a',
    messagingSenderId: '341944596607',
    projectId: 'todoapplication-79661',
    storageBucket: 'todoapplication-79661.firebasestorage.app',
    iosBundleId: 'com.example.todoapplication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBldQPs8q6lRlgyqtPWXBL6gxydd-Lcw5Q',
    appId: '1:341944596607:ios:12bbee6319d4482102e74a',
    messagingSenderId: '341944596607',
    projectId: 'todoapplication-79661',
    storageBucket: 'todoapplication-79661.firebasestorage.app',
    iosBundleId: 'com.example.todoapplication',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBYjXR6BwdWls6xld8_Li-nx27uIVno6vI',
    appId: '1:341944596607:web:c5ade17dcfd2ad1602e74a',
    messagingSenderId: '341944596607',
    projectId: 'todoapplication-79661',
    authDomain: 'todoapplication-79661.firebaseapp.com',
    storageBucket: 'todoapplication-79661.firebasestorage.app',
    measurementId: 'G-205Z7ZPQN8',
  );
}
