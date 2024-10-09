import 'package:flutter/material.dart';

import '../../custom_widgets/custom_text.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          title: "App Bar",
        ),
      ),
      body: Center(child: Text("Profile Page"),),
    );
  }
}
