import 'package:flutter/material.dart';

import '../../custom_widgets/custom_text.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          title: "App Bar",
        ),
      ),
      body: Center(child: Text("Discover Page"),),
    );
  }
}
