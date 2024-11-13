import 'package:flutter/material.dart';

class InstagramView extends StatelessWidget {
  InstagramView({super.key});
  List<Map> stories = [
    {
      'username': 'Jaded.ele',
      'profile_url':
          'https://sharedp.com/wp-content/uploads/2024/06/cute-girl-pic-920x1024.jpg'
    },
    {
      'username': 'Craiyon',
      'profile_url':
          'https://pics.craiyon.com/2023-07-24/cf65205990ca434bab1af1e05fe240d2.webp'
    },
    {
      'username': 'Craiyon',
      'profile_url':
          'https://pics.craiyon.com/2023-07-24/cf65205990ca434bab1af1e05fe240d2.webp'
    },
    {
      'username': 'Craiyon',
      'profile_url':
          'https://pics.craiyon.com/2023-07-24/cf65205990ca434bab1af1e05fe240d2.webp'
    },
    {
      'username': 'Craiyon',
      'profile_url':
          'https://pics.craiyon.com/2023-07-24/cf65205990ca434bab1af1e05fe240d2.webp'
    },
    {
      'username': 'Craiyon',
      'profile_url':
          'https://pics.craiyon.com/2023-07-24/cf65205990ca434bab1af1e05fe240d2.webp'
    },
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
          IconButton(onPressed: () {}, icon: Icon(Icons.messenger)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.13,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: stories.length + 1,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 43,
                              backgroundColor: Colors.orange,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://sharedp.com/wp-content/uploads/2024/06/cute-girl-pic-920x1024.jpg"),
                                radius: 41,
                              ),
                            ),
                            Text("Your story")
                          ],
                        ),
                      );
                    } else {
                      if (index < stories.length) {
                        final story = stories[index];
                        return Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 43,
                                backgroundColor: Colors.orange,
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    story['profile_url'],
                                  ),
                                  radius: 41,
                                ),
                              ),
                              Text(story['username'])
                            ],
                          ),
                        );
                      } else {
                        return SizedBox();
                      }
                    }
                  }),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://st5.depositphotos.com/21922568/66190/v/450/depositphotos_661909842-stock-illustration-cute-little-girl-dress.jpg"),
                      radius: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("haven.li.nevach"),
                  ],
                ),
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
                  ],
                ),
              ],
            ),
            Divider(
              thickness: 0,
            ),
            Expanded(
              child: ListView(
                children: [
                  Column(
                    children: [
                      Image.network(
                          "https://media.istockphoto.com/id/483934084/photo/outdoors-portrait-of-beautiful-young-brunette-girl.jpg?s=612x612&w=0&k=20&c=2VljR69KZM8O08TQ53MfJU72ZobRNAqzQiVa84jen60="),
                      Row(
                        children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                          Spacer(),
                          IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://st5.depositphotos.com/21922568/66190/v/450/depositphotos_661909842-stock-illustration-cute-little-girl-dress.jpg"),
                              radius: 14,
                            ),
                          ),
                          CircleAvatar(
                            radius: 15,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://st5.depositphotos.com/21922568/66190/v/450/depositphotos_661909842-stock-illustration-cute-little-girl-dress.jpg"),
                              radius: 14,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Liked By Kyia_kayakas and Others",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            ''' heaven.is.nevaeh. Your favorite duor ''',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 16),
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.network(
                          "https://media.istockphoto.com/id/483934084/photo/outdoors-portrait-of-beautiful-young-brunette-girl.jpg?s=612x612&w=0&k=20&c=2VljR69KZM8O08TQ53MfJU72ZobRNAqzQiVa84jen60="),
                      Row(
                        children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                          Spacer(),
                          IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://st5.depositphotos.com/21922568/66190/v/450/depositphotos_661909842-stock-illustration-cute-little-girl-dress.jpg"),
                              radius: 14,
                            ),
                          ),
                          CircleAvatar(
                            radius: 15,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://st5.depositphotos.com/21922568/66190/v/450/depositphotos_661909842-stock-illustration-cute-little-girl-dress.jpg"),
                              radius: 14,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Liked By Kyia_kayakas and Others",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            ''' heaven.is.nevaeh. Your favorite duor ''',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 16),
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.network(
                          "https://media.istockphoto.com/id/483934084/photo/outdoors-portrait-of-beautiful-young-brunette-girl.jpg?s=612x612&w=0&k=20&c=2VljR69KZM8O08TQ53MfJU72ZobRNAqzQiVa84jen60="),
                      Row(
                        children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                          Spacer(),
                          IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://st5.depositphotos.com/21922568/66190/v/450/depositphotos_661909842-stock-illustration-cute-little-girl-dress.jpg"),
                              radius: 14,
                            ),
                          ),
                          CircleAvatar(
                            radius: 15,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://st5.depositphotos.com/21922568/66190/v/450/depositphotos_661909842-stock-illustration-cute-little-girl-dress.jpg"),
                              radius: 14,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Liked By Kyia_kayakas and Others",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            ''' heaven.is.nevaeh. Your favorite duor ''',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 16),
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.network(
                          "https://media.istockphoto.com/id/483934084/photo/outdoors-portrait-of-beautiful-young-brunette-girl.jpg?s=612x612&w=0&k=20&c=2VljR69KZM8O08TQ53MfJU72ZobRNAqzQiVa84jen60="),
                      Row(
                        children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                          Spacer(),
                          IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://st5.depositphotos.com/21922568/66190/v/450/depositphotos_661909842-stock-illustration-cute-little-girl-dress.jpg"),
                              radius: 14,
                            ),
                          ),
                          CircleAvatar(
                            radius: 15,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://st5.depositphotos.com/21922568/66190/v/450/depositphotos_661909842-stock-illustration-cute-little-girl-dress.jpg"),
                              radius: 14,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Liked By Kyia_kayakas and Others",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            ''' heaven.is.nevaeh. Your favorite duor ''',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 16),
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar:
          BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded), label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.add_box), label: "Add"),
        BottomNavigationBarItem(
            icon: Icon(Icons.video_collection), label: "Video"),
        BottomNavigationBarItem(
            icon: Icon(Icons.person), label: "Video"),
      ]),
    );
  }
}
