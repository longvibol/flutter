import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const productUrl = "fakestoreapi.com";

void main() {
  return runApp(Root());
}

class Root extends StatefulWidget {
  const Root({super.key});
  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  @override
  void initState() {
    // getProduct();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var lstProducts = [];
  var lstFilterProduct = [];
  var lstSearchResult = [];
  var isSearch = false;

  Future<List> fetchData() async {
    final url = Uri.https(productUrl, "products");
    final response = await http.get(url);
    return jsonDecode(response.body) as List;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: TextFormField(
                  decoration: InputDecoration(hintText: "Search Product"),
                  onChanged: (value) {
                    if (value.isEmpty) {
                      setState(() {
                        isSearch = false;
                      });
                    }
                  },
                  onFieldSubmitted: (value) {
                    isSearch = true;
                    lstSearchResult = lstProducts
                        .where((product) => product['title']
                            .toLowerCase()
                            .contains(value.toLowerCase()))
                        .toList();
                    setState(() {});
                  },
                )),
                IconButton(
                    onPressed: () {
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return SizedBox.expand(
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              color: Colors.amber,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      isSearch = true;
                                      lstFilterProduct = lstProducts
                                          .where((product) =>
                                              product['price'] > 10 &&
                                              product['price'] < 50)
                                          .toList();
                                      setState(() {});
                                    },
                                    child: Text("> 10 \$"),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      isSearch = true;
                                      lstFilterProduct = lstProducts
                                          .where((product) =>
                                              product['price'] > 50 &&
                                              product['price'] < 100)
                                          .toList();
                                      setState(() {});
                                    },
                                    child: Text("> 50 \$"),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      isSearch = true;
                                      lstFilterProduct = lstProducts
                                          .where((product) =>
                                              product['price'] > 100)
                                          .toList();
                                      setState(() {});
                                    },
                                    child: Text("> 100 \$"),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    icon: Icon(Icons.filter_list_alt)),
              ],
            ),
            !isSearch
                ? Expanded(
                    child: FutureBuilder(
                      future: fetchData(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        if (snapshot.hasError) {
                          return Center(
                            child: Text("${snapshot.error}"),
                          );
                        }

                        lstProducts = snapshot.data ?? [];

                        return ListView.builder(
                            itemCount: snapshot.data != null
                                ? snapshot.data!.length
                                : 0,
                            itemBuilder: (context, index) {
                              final product = snapshot.data![index];
                              return ListTile(
                                title: Text("${product['title']}"),
                                leading: Image.network(product['image']),
                                trailing: Text("\$${product['price']}"),
                              );
                            });
                      },
                    ),
                  )
                : Expanded(
                    child: ListView.builder(
                        itemCount: lstFilterProduct.length,
                        itemBuilder: (context, index) {
                          final product = lstFilterProduct[index];
                          return ListTile(
                            leading: Image.network("${product['image']}"),
                            title: Text("${product['title']}"),
                            trailing: Text("\$${product['price']}"),
                          );
                        }),
                  ),

            // : Expanded(
            //     child: ListView.builder(
            //         itemCount: lstSearchResult.length,
            //         itemBuilder: (context, index) {
            //           final product = lstSearchResult[index];
            //           return ListTile(
            //             leading: Image.network("${product['image']}"),
            //             title: Text("${product['title']}"),
            //             trailing: Text("\$${product['price']}"),
            //           );
            //         }),
            //   ),
          ],
        ),
      ),
    );
  }
}
