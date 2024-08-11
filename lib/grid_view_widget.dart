import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  GridViewWidget({super.key});
  List<String> images = [
    'https://i.pinimg.com/originals/98/58/74/9858745cd157f2797065e639c5b3bf23.jpg',
    'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg',
    'https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg',
    'https://i.pinimg.com/originals/98/58/74/9858745cd157f2797065e639c5b3bf23.jpg',
    'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg',
    'https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.count(
        scrollDirection: Axis.horizontal,

        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
        // ===== Style 1 =====
        crossAxisCount: 3,
        children: List.generate(
          images.length,
          (index) => Image(
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
            image: NetworkImage(images[index]),
          ),
        ),
        // ===== Style 2 ====
        // children: [
        //   for (var image in images)
        //     Image(
        //         height: 200,
        //         width: double.infinity,
        //         fit: BoxFit.cover,
        //         image: NetworkImage(image))
        // ],
      ),
    );
  }
}
