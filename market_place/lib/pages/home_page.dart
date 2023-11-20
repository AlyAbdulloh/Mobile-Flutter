import 'package:flutter/material.dart';
import 'package:market_place/pages/detai_item.dart';
import 'package:market_place/models/item.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:market_place/seeder/item_seeder.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final items = ItemSeeder().listItems();

  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/item': (context) => DetailItem(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text("Market Place"),
        ),
        body: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Expanded(
                  child: StaggeredGridView.countBuilder(
                    itemCount: items.length,
                    crossAxisCount: 2,
                    staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
                    itemBuilder: (context, index) {
                      final item = items[index];
                      return InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/item',
                              arguments: item);
                        },
                        child: SizedBox(
                          height: 230,
                          child: Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            elevation: 4,
                            shadowColor: const Color.fromARGB(255, 27, 27, 27),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            )),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
