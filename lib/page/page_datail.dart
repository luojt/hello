import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
      ),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Text(
              'You have pushed the button this many times:',
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (content, index) {
                return Column(
                  children: [
                   /* Image.network(
                        "http://static-hz.ealingbox.com/demo/images/ic1.jpg"),
                    Image.network(
                        "http://static-hz.ealingbox.com/demo/images/ic2.jpg"),
                    Image.network(
                        "http://static-hz.ealingbox.com/demo/images/ic3.jpg"),*/

                    CachedNetworkImage(imageUrl: 'http://static-hz.ealingbox.com/demo/images/ic1.jpg',),
                    CachedNetworkImage(imageUrl: 'http://static-hz.ealingbox.com/demo/images/ic2.jpg',),
                    CachedNetworkImage(imageUrl: 'http://static-hz.ealingbox.com/demo/images/ic3.jpg',),
                  ],
                );
              },
              childCount: 10,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
