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
    apiKey: 'AIzaSyBNwJDhgbtimv8XKCn0dtrjHDbK6ZkOOoM',
    appId: '1:242155181355:web:4023cc39f8bf89fd22e16e',
    messagingSenderId: '242155181355',
    projectId: 'video-call-agora-b3175',
    authDomain: 'video-call-agora-b3175.firebaseapp.com',
    storageBucket: 'video-call-agora-b3175.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA0CcQp1MhVIO_TFlTl4S4PVMqa74sWzEg',
    appId: '1:242155181355:android:cfc89cd21becc42622e16e',
    messagingSenderId: '242155181355',
    projectId: 'video-call-agora-b3175',
    storageBucket: 'video-call-agora-b3175.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDPS0ACHADmo14dmrAIBINALPca6lafgxo',
    appId: '1:242155181355:ios:7f794a6a6e2ce2a422e16e',
    messagingSenderId: '242155181355',
    projectId: 'video-call-agora-b3175',
    storageBucket: 'video-call-agora-b3175.firebasestorage.app',
    iosBundleId: 'com.example.videoCalligFirebaseAgora',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDPS0ACHADmo14dmrAIBINALPca6lafgxo',
    appId: '1:242155181355:ios:7f794a6a6e2ce2a422e16e',
    messagingSenderId: '242155181355',
    projectId: 'video-call-agora-b3175',
    storageBucket: 'video-call-agora-b3175.firebasestorage.app',
    iosBundleId: 'com.example.videoCalligFirebaseAgora',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBNwJDhgbtimv8XKCn0dtrjHDbK6ZkOOoM',
    appId: '1:242155181355:web:faefdb3f32b9e38722e16e',
    messagingSenderId: '242155181355',
    projectId: 'video-call-agora-b3175',
    authDomain: 'video-call-agora-b3175.firebaseapp.com',
    storageBucket: 'video-call-agora-b3175.firebasestorage.app',
  );
}
