import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDvQKFwthAKcbJqfsu1WlVk1zPLXFcXDbw',
    appId: '1:248525158037:web:3e2cf28bb76b30b2e48d9c',
    messagingSenderId: '248525158037',
    projectId: 'wudy-iconic',
    authDomain: 'wudy-iconic.firebaseapp.com',
    databaseURL: 'https://wudy-iconic-default-rtdb.firebaseio.com',
    storageBucket: 'wudy-iconic.appspot.com',
    measurementId: 'G-LGVCCFBGG8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAB1_fylRkykbpzq-fNCDst-kEeskfrP1w',
    appId: '1:248525158037:android:3c518406492e21a2e48d9c',
    messagingSenderId: '248525158037',
    projectId: 'wudy-iconic',
    databaseURL: 'https://wudy-iconic-default-rtdb.firebaseio.com',
    storageBucket: 'wudy-iconic.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCMXukhi0Z6IS2xWSW7PGS4LeulTKYxXuo',
    appId: '1:248525158037:ios:26881bdcd6da69c6e48d9c',
    messagingSenderId: '248525158037',
    projectId: 'wudy-iconic',
    databaseURL: 'https://wudy-iconic-default-rtdb.firebaseio.com',
    storageBucket: 'wudy-iconic.appspot.com',
    iosClientId:
        '248525158037-fuu3bh1n5rhvdbjqrc6j23fcko362tj5.apps.googleusercontent.com',
    iosBundleId: 'com.example.wudyIconic',
  );
}
