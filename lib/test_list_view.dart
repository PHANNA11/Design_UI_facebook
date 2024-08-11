import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  ListViewWidget({super.key});
  List<String> images = [
    'https://i.pinimg.com/originals/98/58/74/9858745cd157f2797065e639c5b3bf23.jpg',
    'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg',
    'https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg'
  ];
  List<String> imagesGrid = [
    'https://i.pinimg.com/originals/98/58/74/9858745cd157f2797065e639c5b3bf23.jpg',
    'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg',
    'https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg',
    'https://i.pinimg.com/originals/98/58/74/9858745cd157f2797065e639c5b3bf23.jpg',
    'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg',
    'https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg'
  ];
  String userName = 'Alibaba';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'FAKEBOOK',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 200,
              width: double.infinity,
              child: GridView.count(
                childAspectRatio: 12 / 10,
                scrollDirection: Axis.horizontal,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
                crossAxisCount: 1,
                children: List.generate(
                  imagesGrid.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(imagesGrid[index]),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 5,
                            left: 5,
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue, width: 2),
                                  image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg'),
                                  ),
                                  shape: BoxShape.circle),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                for (var image in images)
                  Card(
                    // color: Colors.grey,
                    elevation: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: const CircleAvatar(
                              maxRadius: 25,
                              backgroundImage: NetworkImage(
                                  'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg'),
                            ),
                            title: Text(userName),
                            subtitle: const Text('1 day a go'),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Container(
                              height: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(image),
                                ),
                              ),
                              // child: Image(
                              //     height: 250,
                              //     width: double.infinity,
                              //     fit: BoxFit.cover,
                              //     image: NetworkImage(image)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
