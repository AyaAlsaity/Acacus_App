
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


// import '../screens/main_screens/main_screen.dart';
import '../screens/main_screens/tabs_screen.dart';
import '../screens/sub_screens/sign_in_screen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream:FirebaseAuth.instance.authStateChanges(),
        
        builder: (context, snapshot) {
          if(snapshot.hasData){
            return const TabsScreen();
          }else{
            return const LogInScreen();
          }
        }, 
      ),
    );
  }
}