import 'package:app1_test/grid_view_widget.dart';
import 'package:flutter/material.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  void test() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        //  backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'MY APP',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 3),
                      shape: BoxShape.circle,
                      color: Colors.red,
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://i.pinimg.com/originals/98/58/74/9858745cd157f2797065e639c5b3bf23.jpg'))),
                  height: 200,
                  width: 200,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.red, width: 3),
                    shape: BoxShape.circle,
                    color: Colors.red,
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://i.pinimg.com/originals/98/58/74/9858745cd157f2797065e639c5b3bf23.jpg'))),
                height: 200,
                width: 200,
              ),
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 200,
                    color: Colors.blue,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 200,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 200,
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
            const Image(
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://i.pinimg.com/originals/98/58/74/9858745cd157f2797065e639c5b3bf23.jpg')),
          ],
        ),
      ),
    );
  }
}
