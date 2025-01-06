import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var screenIndex = 0;
  final mobileScreen = [Homepage(), SearchPage()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //------------------- AppBar -------------------
        appBar: AppBar(
          title: Text(
            "Instagram",
            style: GoogleFonts.yellowtail(fontSize: 32, color: Colors.black),
          ),
          actions: [
            Icon(Icons.favorite_outline),
            SizedBox(width: 15),
            Icon(Icons.email_outlined),
            SizedBox(width: 15)
          ],
        ),
        //------------------- body -------------------
        body: mobileScreen[screenIndex],
        // padding: EdgeInsets.all(15), //เว้นระยะรอบวัตถุ 15 pixel
        //------------------- bottomNavigationBar -------------------
        bottomNavigationBar: Container(
          height: 61,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    screenIndex = 0;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    screenIndex = 1;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Icon(
                    Icons.search_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    screenIndex = 2;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Icon(
                    Icons.photo_size_select_actual_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    screenIndex = 3;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Icon(
                    Icons.notifications_active_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool _heartIsliked = false;
  bool _bookmarkIsOn = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 15),
              CircleAvatar(
                radius: 45,
                backgroundColor: const Color.fromARGB(255, 104, 98, 100),
                child: CircleAvatar(
                  radius: 42,
                  backgroundImage: AssetImage('assets/images/owen.png'),
                ),
              ),
              SizedBox(
                width: 9,
              ),
              CircleAvatar(
                radius: 45,
                backgroundColor: const Color.fromARGB(255, 104, 98, 100),
                child: CircleAvatar(
                  radius: 42,
                  backgroundImage: AssetImage('assets/images/nal.png'),
                ),
              ),
              SizedBox(
                width: 9,
              ),
              CircleAvatar(
                radius: 45,
                backgroundColor: const Color.fromARGB(255, 104, 98, 100),
                child: CircleAvatar(
                  radius: 42,
                  backgroundImage: AssetImage('assets/images/plant.png'),
                ),
              ),
              SizedBox(
                width: 9,
              ),
              CircleAvatar(
                radius: 45,
                backgroundColor: const Color.fromARGB(255, 104, 98, 100),
                child: CircleAvatar(
                  radius: 42,
                  backgroundImage: AssetImage('assets/images/pipe.png'),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 28,
                height: 20,
              ),
              Text("Your story"),
              SizedBox(
                width: 42,
              ),
              Text("guyasitt"),
              SizedBox(
                width: 43,
              ),
              Text("plant_cp"),
              SizedBox(
                width: 35,
              ),
              Text("pipe_17405"),
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 3),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: const Color.fromARGB(255, 104, 98, 100),
                  child: CircleAvatar(
                    radius: 23,
                    backgroundImage: AssetImage('assets/images/m.png'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Row(
                  children: [
                    Text("Surachart.k"),
                    Padding(
                      padding: const EdgeInsets.only(left: 240),
                    ),
                    Icon(Icons.more_horiz_rounded)
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Row(
              children: [
                GestureDetector(
                  onDoubleTap: () {
                    setState(() {
                      _heartIsliked = !_heartIsliked;
                    });
                  },
                  child: _heartIsliked
                      ? Image.asset(
                          'assets/images/car.jpg',
                          width: 405,
                        )
                      : Image.asset(
                          'assets/images/car.jpg',
                          width: 405,
                        ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(
                    () {
                      _heartIsliked = !_heartIsliked;
                    },
                  );
                },
                child: _heartIsliked
                    ? Padding(
                        padding: const EdgeInsets.only(left: 2),
                        child: Row(
                          children: [
                            Icon(
                              Icons.favorite,
                              color: Colors.redAccent,
                              size: 32,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 3),
                            ),
                            Text("90")
                          ],
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.only(left: 2),
                        child: Row(
                          children: [
                            Icon(
                              Icons.favorite_border_outlined,
                              size: 32,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 3),
                            ),
                            Text("89")
                          ],
                        ),
                      ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.messenger_outline_sharp,
                      size: 28,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 3),
                    ),
                    Text("50")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  children: [
                    Icon(
                      Icons.share_rounded,
                      size: 28,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 3),
                    ),
                    Text("12")
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _bookmarkIsOn = !_bookmarkIsOn;
                  });
                },
                child: _bookmarkIsOn
                    ? Padding(
                        padding: const EdgeInsets.only(left: 220),
                        child: Icon(
                          Icons.bookmark,
                          color: Colors.black,
                          size: 30,
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.only(left: 220),
                        child: Icon(
                          Icons.bookmark_border_outlined,
                          size: 30,
                        ),
                      ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 3),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: const Color.fromARGB(255, 104, 98, 100),
                  child: CircleAvatar(
                    radius: 23,
                    backgroundImage: AssetImage('assets/images/plant.png'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Row(
                  children: [
                    Text("plant_cp"),
                    Padding(
                      padding: const EdgeInsets.only(left: 262),
                    ),
                    Icon(Icons.more_horiz_rounded),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: Image.asset(
                  "assets/images/natural.jpg",
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                  height: 198,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Search Page",
        style: TextStyle(color: Colors.red),
      ),
    );
  }
}
