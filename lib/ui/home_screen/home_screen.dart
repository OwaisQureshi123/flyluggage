
import 'package:fl/ui/widgets/my_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return FacebookLikeScreen();//MyBody(child: child)
  }
}


class FacebookLikeScreen extends StatefulWidget {
  const FacebookLikeScreen({super.key});

  @override
  State<FacebookLikeScreen> createState() => _FacebookLikeScreenState();
}

class _FacebookLikeScreenState extends State<FacebookLikeScreen> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, // like Facebook: Home, Videos, Marketplace, Groups, Notifications
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              pinned: true,
              floating: true,
              snap: true,
              expandedHeight: 140,
              elevation: 0,
              centerTitle: false,
              titleSpacing: 12,
              title: Text('MyApp' ),
              actions: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.message_outlined)),
              ],
              bottom: const TabBar(
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                tabs: [
                  Tab(icon: Icon(Icons.home_filled), text: 'Home'),
                  Tab(icon: Icon(Icons.ondemand_video), text: 'Videos'),
                  Tab(icon: Icon(Icons.storefront), text: 'Marketplace'),
                  Tab(icon: Icon(Icons.group), text: 'Groups'),
                  Tab(icon: Icon(Icons.notifications), text: 'Alerts'),
                ],
              ),
            ),
          ],
          body: const TabBarView(
            children: [
              _FeedList(title: 'Home Feed'),
              _FeedList(title: 'Videos'),
              _FeedList(title: 'Marketplace'),
              _FeedList(title: 'Groups'),
              _FeedList(title: 'Notifications'),
            ],
          ),
        ),
      ),
    );
  }
}


class _FeedList extends StatelessWidget {
  final String title;
  const _FeedList({required this.title});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.only(top: 8, bottom: 24),
      itemCount: 24,
      separatorBuilder: (_, __) => const Divider(height: 1),
      itemBuilder: (context, i) {
        return ListTile(
          leading: const CircleAvatar(child: Icon(Icons.person)),
          title: Text('$title • Post ${i + 1}'),
          subtitle: const Text('This is a sample post item with some text.'),
          trailing: const Icon(Icons.more_horiz),
        );
      },
    );
  }
}
