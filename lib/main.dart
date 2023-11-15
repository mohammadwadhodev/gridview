import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> pursesImagesList = [
    "assets/purses/1.jpg",
    "assets/purses/2.jpg",
    "assets/purses/3.jpg",
    "assets/purses/4.jpg",
    "assets/purses/5.jpg",
    "assets/purses/5.jpeg",
    "assets/purses/6.jpeg",
    "assets/purses/7.jpg",
    "assets/purses/8.jpeg",
    "assets/purses/9.jpeg",
    "assets/purses/10.jpg",
    "assets/purses/11.jpg",
    "assets/purses/12.jpg",
    "assets/purses/1.jpg",
    "assets/purses/2.jpg",
    "assets/purses/3.jpg",
    "assets/purses/4.jpg",
    "assets/purses/5.jpg",
    "assets/purses/5.jpeg",
    "assets/purses/6.jpeg",
    "assets/purses/7.jpg",
    "assets/purses/8.jpeg",
    "assets/purses/9.jpeg",
    "assets/purses/10.jpg",
    "assets/purses/11.jpg",
    "assets/purses/12.jpg",
    "assets/purses/1.jpg",
    "assets/purses/2.jpg",
    "assets/purses/1.jpg",
    "assets/purses/2.jpg",
    "assets/purses/3.jpg",
    "assets/purses/4.jpg",
    "assets/purses/5.jpg",
    "assets/purses/5.jpeg",
    "assets/purses/6.jpeg",
    "assets/purses/7.jpg",
    "assets/purses/8.jpeg",
    "assets/purses/9.jpeg",
    "assets/purses/10.jpg",
    "assets/purses/11.jpg",
    "assets/purses/12.jpg",
    "assets/purses/1.jpg",
    "assets/purses/2.jpg",
    "assets/purses/3.jpg",
    "assets/purses/4.jpg",
    "assets/purses/5.jpg",
    "assets/purses/5.jpeg",
    "assets/purses/6.jpeg",
    "assets/purses/7.jpg",
    "assets/purses/8.jpeg",
    "assets/purses/9.jpeg",
    "assets/purses/10.jpg",
    "assets/purses/11.jpg",
    "assets/purses/12.jpg",
    "assets/purses/1.jpg",
    "assets/purses/2.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
          backgroundColor: const Color(0xffeff1f5),
          appBar: AppBar(
            backgroundColor: const Color(0xffeff1f5),
            title: const Text("GridView"),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: GridView.count(
              scrollDirection: Axis.horizontal,
              crossAxisCount: 4,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: List.generate(pursesImagesList.length, (index){
                return gridContainer(pursesImagesList[index]);
              }),
            ))
          ),
    );
  }

  Widget gridContainer(image){
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.deepPurple.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
    );
  }

}
