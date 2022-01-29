import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var a = 0, bottonbarindex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Image(
                image: NetworkImage(
                    'http://assets.stickpng.com/thumbs/5a1c32b7f65d84088faf13f2.png'),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Delicious asian food',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'sumo id watching hunger has no chance',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 11),
                )
              ],
            ),
            Icon(
              Icons.search,
              color: Colors.red,
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            height: 150,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      border: Border.all(
                        width: 2,
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1NTlipGUcR9jBTMVppCSJXQKHHg6iGoqH0Q&usqp=CAU'))),
                  alignment: Alignment.center,
                );
              },
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Populer and new',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w800),
              )),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            height: 140,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  width: 220,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.black26,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://www.b2b-infos.com/wp-content/uploads/Fast-food-en-France.jpg'))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 23,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Tom Yam',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 15),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 3, horizontal: 10),
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              '550 DA',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 13),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Categories',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w800),
              )),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            height: 45,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      a = index;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                      color:
                          a != index ? Colors.grey.shade200 : Colors.redAccent,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.share_arrival_time_sharp,
                          color:
                              a != index ? Colors.grey.shade500 : Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'snaks',
                          style: TextStyle(
                            color: a != index
                                ? Colors.grey.shade500
                                : Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w800,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            height: 140,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            child: Row(
              children: [
                Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                      ),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/20190503-delish-pineapple-baked-salmon-horizontal-ehg-450-1557771120.jpg?crop=0.669xw:1.00xh;0.173xw,0&resize=640:*'))),
                ),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Wasabi Shrips',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'Peel potatoes and slice into desired rinse and pat dry. Heat oil in a deep-fryer or deep-sided saucepan to 275°F and blanch potatoes 5 minutes, ',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            wordSpacing: 2.3,
                            color: Colors.grey.shade400),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 3, horizontal: 10),
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              '550 DA',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 13),
                            ),
                          ),
                          Icon(
                            Icons.favorite_outline,
                            color: Colors.red,
                          )
                        ],
                      )
                    ],
                  ),
                ))
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(40)),
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                  onTap: () {
                    setState(() {
                      bottonbarindex = 1;
                    });
                  },
                  child: Container(
                      height: 45,
                      width: 45,
                      
                      child: Icon(
                        Icons.menu_book,
                        color:
                            bottonbarindex == 1 ? Colors.pink.shade400 : Colors.black45,
                      ))),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      bottonbarindex = 2;
                    });
                  },
                  child: Container(
                      height: 45,
                      width: 45,
                     
                      child: Icon(
                        Icons.favorite_outline,
                        color:
                            bottonbarindex == 2 ? Colors.pink.shade400 : Colors.black45,
                      ))),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      bottonbarindex = 3;
                    });
                  },
                  child: Container(
                      height: 45,
                      width: 45,
                      
                      child: Icon(
                        Icons.portable_wifi_off,
                        color:
                            bottonbarindex == 3 ? Colors.pink.shade400 : Colors.black45,
                      ))),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      bottonbarindex = 4;
                    });
                  },
                  child: Container(
                      height: 45,
                      width: 45,
                      
                      child: Icon(
                        Icons.card_giftcard_outlined,
                        color:
                            bottonbarindex == 4 ? Colors.pink.shade400 : Colors.black45,
                      ))),
              
            ],
          ),
        ),
      ),
    );
  }
}
