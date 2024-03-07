import 'package:flutter/material.dart';

import '../widgets/shimmer.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  bool _isLoading = false;
  void getData() async {
    setState(() {
      _isLoading = true;
    });
    await Future.delayed(Duration(seconds: 3));
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (_isLoading)
        ? ShimmerScreen()
        : Scaffold(
            body: Center(
              child: Text('hje'),
            ),
          );
  }
}
