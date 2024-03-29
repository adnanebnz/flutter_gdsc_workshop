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
    apiKey: 'AIzaSyCmNO32KbWJX6HadqB5C_1T_hWuMOIJXTU',
    appId: '1:61394975101:web:7128ab9a833e019cce3414',
    messagingSenderId: '61394975101',
    projectId: 'tip-calculator-c3c4e',
    authDomain: 'tip-calculator-c3c4e.firebaseapp.com',
    storageBucket: 'tip-calculator-c3c4e.appspot.com',
    measurementId: 'G-SJK30LWGM3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBk4KQtFGdMbpjllHlzJ1iDY-4AaPs7GDg',
    appId: '1:61394975101:android:19d05c0edc50db5bce3414',
    messagingSenderId: '61394975101',
    projectId: 'tip-calculator-c3c4e',
    storageBucket: 'tip-calculator-c3c4e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBnjdBOcRLSC6IRQq3dKeqR4UuXs7MvlQA',
    appId: '1:61394975101:ios:07b00c948ad2e0f4ce3414',
    messagingSenderId: '61394975101',
    projectId: 'tip-calculator-c3c4e',
    storageBucket: 'tip-calculator-c3c4e.appspot.com',
    iosBundleId: 'com.decodev.tipCalculator',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBnjdBOcRLSC6IRQq3dKeqR4UuXs7MvlQA',
    appId: '1:61394975101:ios:1d25483e241199b9ce3414',
    messagingSenderId: '61394975101',
    projectId: 'tip-calculator-c3c4e',
    storageBucket: 'tip-calculator-c3c4e.appspot.com',
    iosBundleId: 'com.decodev.tipCalculator.RunnerTests',
  );
}
