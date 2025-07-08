import 'package:flutter/material.dart';
import 'login.dart';
import 'package:login_responsive_app/responsive/breakpoint.dart';
import 'package:login_responsive_app/responsive/responsive_center.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: const ResponsiveCenter(
        maxContentWidth: Breakpoint.deskTop,
        padding: EdgeInsets.all(16),
        child: Login(),
      ),
    );
  }
}
