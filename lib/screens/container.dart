import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rss_feed/controller/xml_controller.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final feedProvider = Provider.of<XMLHandler>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('RSS Feed'),
      ),
      drawer: Drawer(
        child: ListView(children: const [
          ListTile(
            title: Text('CNN'),
          ),
          ListTile(title: Text('Fox News'))
        ]),
      ),
      body: ListView.builder(
        itemCount: feedProvider.feedItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(feedProvider.feedItems[index]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh),
        onPressed: () => {feedProvider.getXmlFromUrl('')},
      ),
    );
  }
}
