import 'package:PetKonnect/widgets/profileScreen/ProfileLayoutComponents/profile_details_layout.dart';
import 'package:PetKonnect/widgets/profileScreen/ProfileLayoutComponents/profile_top_bar.dart';
import 'package:PetKonnect/widgets/profileScreen/ProfileLayoutComponents/highlights_row.dart';
import 'package:PetKonnect/widgets/profileScreen/ProfileLayoutComponents/tab_bar.dart';
import 'package:flutter/material.dart';

class ProfileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
     ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
        shrinkWrap: true,
        children: [
          ProfileTopBar(),
          ProfileDetailsLayout(),
          HighlightsRow(),
          TabBarLayout()
        ],
      );
  }
}
