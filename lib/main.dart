import 'package:firebase/interfaz/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyCqXxjIrHh-Vd_XG72fSYcSpPyHpqBio6w",
          authDomain: "edinsoncorpautenticacion.firebaseapp.com",
          projectId: "edinsoncorpautenticacion",
          storageBucket: "edinsoncorpautenticacion.appspot.com",
          messagingSenderId: "747220592926",
          appId: "1:747220592926:web:01a2640b67cdda5494010f",
          measurementId: "G-F5NPL8Y4RX"));
  runApp(const MyApp());
}
