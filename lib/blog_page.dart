import 'package:flutter/material.dart';
import 'package:vip_signals/custom_widget/post_widget.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getappbar(),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  getBlogPost(
                    image: 's.png',
                    Date: '04/08/2023',
                    Buy: '0.2385',
                    Sell: '0.6985',
                  ),
                  getBlogPost(
                    image: 'a.png',
                    Date: '04/08/2023',
                    Buy: '150.5',
                    Sell: '180.6985',
                  ),
                  getBlogPost(
                    image: 'c.png',
                    Date: '04/08/2023',
                    Buy: '0.002385',
                    Sell: '0.006985',
                  ),
                  getBlogPost(
                    image: 'r.png',
                    Date: '04/08/2023',
                    Buy: '2.2385',
                    Sell: '4.6985',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Sign Out',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// appbar

PreferredSizeWidget _getappbar() {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    title: Text(
      'News and Signals VIP',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w900,
        fontFamily: 'vazir',
      ),
    ),
  );
}
