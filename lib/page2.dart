import 'package:app1_test/grid_view_widget.dart';
import 'package:app1_test/home_page.dart';
import 'package:app1_test/test_list_view.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(textEditingController.text),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeApp(),
                    ));
              },
              leading: const CircleAvatar(),
              title: const Text('Hello'),
              subtitle: const Text('Flutter'),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ListViewWidget(),
                      ));
                },
                leading: const CircleAvatar(),
                title: const Text('List View'),
                subtitle: const Text('Flutter'),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GridViewWidget(),
                      ));
                },
                leading: const CircleAvatar(),
                title: const Text('Grid View'),
                subtitle: const Text('Flutter'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
