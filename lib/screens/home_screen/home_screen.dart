import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import './call_tab.dart';
import './camera_tab.dart';
import './chat_tab.dart';
import './status_tab.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 1, length: 4, vsync: this);
  }

  Widget _buildTabBar() {
    return TabBar(
      controller: _tabController,
      tabs: [
        Tab(
          icon: Icon(
            FontAwesome.camera,
            color: Theme.of(context).textTheme.headline1.color,
          ),
        ),
        Tab(
          icon: Text(
            'CHATS',
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        Tab(
          icon: Text(
            'STATUS',
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        Tab(
          icon: Text(
            'CALLS',
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
      ],
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      title: Text('WhatsApp', style: Theme.of(context).textTheme.headline1),
      actions: [
        IconButton(
          icon: Icon(AntDesign.search1),
          onPressed: () => print('Search button is clicked'),
        ),
        IconButton(
          icon: Icon(FontAwesome.ellipsis_v),
          onPressed: () => print('Menu button is clicked'),
        ),
      ],
      bottom: _buildTabBar(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: TabBarView(
        controller: _tabController,
        children: [
          CameraTab(),
          ChatTab(),
          StatusTab(),
          CallTab(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          MaterialIcons.comment,
          color: Theme.of(context).textTheme.headline1.color,
        ),
        onPressed: () => print('Contact button clicked'),
      ),
    );
  }
}
