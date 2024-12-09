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
  var lstProducts = []; // emtply array
  var lstSearchResult = [];
  var isSearch = false;

  // Future<void> getProduct() async {
  //   final url = Uri.https(productUrl, "products");
  //   final response = await http.get(url);
  //   //print("respond = ${response.body}");
  //
  //   // Convert
  //   final products = jsonDecode(response.body) as List;
  //   this.products = products;
  // }

  // when we get data we need to set state
  // @override
  // void setState(VoidCallback fn) {
  //   // TODO: implement setState
  //   super.setState(fn);
  // }

  Future<List> fetchData() async {
    final url = Uri.https(productUrl, "products");
    final response = await http.get(url);
    return jsonDecode(response.body) as List;
  }

  @override
  void initState() {
    // getProduct();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                      onPressed: () {}, icon: Icon(Icons.filter_list_alt)),
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
                          itemCount: lstSearchResult.length,
                          itemBuilder: (context, index) {
                            final product = lstSearchResult[index];
                            return ListTile(
                              leading: Image.network("${product['image']}"),
                              title: Text("${product['title']}"),
                              trailing: Text("\$${product['price']}"),
                            );
                          }),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
