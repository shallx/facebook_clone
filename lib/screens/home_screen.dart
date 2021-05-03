import 'package:facebook/config/palette.dart';
import 'package:facebook/data/data.dart';
import 'package:facebook/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int s = 0;
  Future<void> _pull() async {
    await Future.delayed(Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: _pull,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              brightness: Brightness.light,
              backgroundColor: Colors.white,
              centerTitle: false,
              floating: true,
              title: Text(
                'facebook',
                style: TextStyle(
                  color: Palette.facebookBlue,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1.2,
                ),
              ),
              actions: [
                CircleButton(
                  icon: Icons.search,
                  iconSize: 30.0,
                  onPressed: () {},
                ),
                CircleButton(
                  icon: Icons.message,
                  iconSize: 30.0,
                  onPressed: () {
                    print("Goto facebook");
                  },
                ),
              ],
            ),
            SliverToBoxAdapter(
                child: CreatePostContainer(currentUser: currentUser)),
            SliverPadding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
              sliver: SliverToBoxAdapter(
                child: Rooms(onlineUsers: onlineUsers),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(vertical: 5),
              sliver: SliverToBoxAdapter(
                child: Stories(currentUser: currentUser, stories: stories),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
