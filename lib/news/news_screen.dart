import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(children: [
        itemNews(),
        itemNews(),
        itemNews(),
      ]),
    );
  }

  Widget itemNews() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:8.0, vertical: 4.0),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 6,
        child: IntrinsicHeight(
          child: InkWell(
            onTap: (){
              const snackBar = SnackBar(content: Text("Item Clicked"));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.network(
                  "https://asset.kompas.com/crops/m5SVLm5oNjh6CinP0w3_1uKboxc=/64x0:883x546/750x500/data/photo/2022/08/23/6303d8e771ad5.jpg",
                  width: 100,
                  fit: BoxFit.fitHeight,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Indonesia membawa pulang dua gelar juara Hylo Open 2022 melalui Anthony Sinisuka Ginting dan Rehan Naufal Kusharjanto/Lisa Ayu Kusumawati. ",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          "Kompas.com",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2
                              ?.copyWith(color: Colors.orange),
                        ),
                        Text(
                          "Andaikan waktu bisa diputar balik, lalu terbuka kesempatan untuk mencegah perang antara Rusia dan Ukraina, apakah momentum itu benar-benar bisa dimanfaatkan oleh Perserikatan Bangsa Bangsa (PBB), atau setidaknya rakyat di Eropa untuk mencegah para pemimpinnya terlibat?",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 4,
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
