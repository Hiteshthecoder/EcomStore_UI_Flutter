import 'package:ecom_store/routes.dart';
import 'package:ecom_store/screens/tabbar/tabbar.dart';
import 'package:ecom_store/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FreshBuyerApp());
}

class FreshBuyerApp extends StatelessWidget {
  const FreshBuyerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EcomStore',
      theme: appTheme(),
      routes: routes,
      home: const FRTabbarScreen(),
    );
  }
}
