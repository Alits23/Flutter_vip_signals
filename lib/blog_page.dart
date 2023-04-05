import 'package:flutter/material.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_circle_outline_sharp,
            ),
          ),
        ),
      ),
    );
  }
}
