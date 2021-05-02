import 'package:PetKonnect/widgets/profileScreen/ProfileLayoutComponents/tab_bar_components/posts_layout.dart';
import 'package:flutter/material.dart';

class TabBarLayout extends StatefulWidget {
  @override
  _TabBarLayoutState createState() => _TabBarLayoutState();
}

class _TabBarLayoutState extends State<TabBarLayout>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: DefaultTabController(
        length: 3,
        child: Column(children: [
          Container(
            child: TabBar(
              controller: tabController,
              onTap: (index) {
                setState(() {
                  selectedIndex = index;
                  tabController.animateTo(index);
                });
              },
              tabs: [
                Tab(
                  child: Text("Posts"),
                ),
                Tab(
                  child: Text("Tagged"),
                ),
                Tab(
                  child: Text("Saved"),
                ),
              ],
            ),
          ),
          IndexedStack(
            children: <Widget>[
              Visibility(
                child: PostsLayout(),
                maintainState: true,
                visible: selectedIndex == 0,
              ),
              Visibility(
                child: Text('Tagged'),
                maintainState: true,
                visible: selectedIndex == 1,
              ),
              Visibility(
                child: Text('Saved'),
                maintainState: true,
                visible: selectedIndex == 2,
              ),
            ],
            index: selectedIndex,
          ),
        ]),
      ),
    );
  }
}
