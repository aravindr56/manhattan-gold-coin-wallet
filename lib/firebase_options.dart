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
    apiKey: 'AIzaSyAKnxt-KDPoj7u2lWELFwID4Sn4khlhOUQ',
    appId: '1:2547057088:web:bc5e873d960f766552c825',
    messagingSenderId: '2547057088',
    projectId: 'manhattan-gold-coin-wallet',
    authDomain: 'manhattan-gold-coin-wallet.firebaseapp.com',
    storageBucket: 'manhattan-gold-coin-wallet.appspot.com',
    measurementId: 'G-VSD3SXH5DQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDmd-bEhp8IW--0Jv0_gEZ1fYTG8wwV0bU',
    appId: '1:2547057088:android:e6879b67d940685a52c825',
    messagingSenderId: '2547057088',
    projectId: 'manhattan-gold-coin-wallet',
    storageBucket: 'manhattan-gold-coin-wallet.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDQNEkpOcovcfDes82x7wNw2us9lMkSrA8',
    appId: '1:2547057088:ios:f788c225063c75f152c825',
    messagingSenderId: '2547057088',
    projectId: 'manhattan-gold-coin-wallet',
    storageBucket: 'manhattan-gold-coin-wallet.appspot.com',
    iosBundleId: 'com.example.manhattanGoldCoinWallt',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDQNEkpOcovcfDes82x7wNw2us9lMkSrA8',
    appId: '1:2547057088:ios:f788c225063c75f152c825',
    messagingSenderId: '2547057088',
    projectId: 'manhattan-gold-coin-wallet',
    storageBucket: 'manhattan-gold-coin-wallet.appspot.com',
    iosBundleId: 'com.example.manhattanGoldCoinWallt',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAKnxt-KDPoj7u2lWELFwID4Sn4khlhOUQ',
    appId: '1:2547057088:web:612997894a3571b852c825',
    messagingSenderId: '2547057088',
    projectId: 'manhattan-gold-coin-wallet',
    authDomain: 'manhattan-gold-coin-wallet.firebaseapp.com',
    storageBucket: 'manhattan-gold-coin-wallet.appspot.com',
    measurementId: 'G-HGBQYHSLPT',
  );
}
