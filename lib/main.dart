import 'package:flutter/material.dart';
import 'package:product_basket/text_theme_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;

  void addCounter() {
    _counter++;
    setState(() {});
  }

  void removeCounter() {
    _counter--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Shop"),
          actions: [
            ActionChip(
                backgroundColor: Colors.grey[700],
                label: Row(
                  children: [
                    Icon(Icons.money, color: Colors.white),
                    SizedBox(
                      width: 5,
                    ),
                    Text("35 TL", style: CustomTextTheme().whiteText),
                  ],
                ),
                onPressed: () {})
          ],
        ),
        body: ListView.builder(itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              subtitle: Wrap(
                spacing: 10,
                children: [
                  Text(
                    "Kola",
                    style: CustomTextTheme().productText,
                  ),
                  Text("10 TL", style: CustomTextTheme().productText)
                ],
              ),
              trailing: IconButton(
                  onPressed: () {}, icon: Icon(Icons.shopping_basket_sharp)),
              title: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.3,
                    child: Image.network(
                        "https://ayb.akinoncdn.com/products/2019/01/18/3544/5aa1ee14-1c83-4213-a62b-773c4785e187_size780x780_quality60_cropCenter.jpg"),
                  ),
                  Container(
                    color: Colors.grey,
                    child: Column(
                      children: [
                        IconButton(
                            onPressed: () {
                              addCounter();
                            },
                            icon: Icon(Icons.add)),
                        Text("$_counter"),
                        IconButton(
                            onPressed: () {
                              removeCounter();
                            },
                            icon: Icon(Icons.remove)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
