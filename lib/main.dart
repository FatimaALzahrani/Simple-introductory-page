import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        //عشان ما يدخل بمنطقة الساعه والشاحة يكون يبدا من بدايه شاشه التطبيق نفسه
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.start, //كل العبارات تبدأ من اليسار
            children: [
              Row(
                children: [
                  Container(
                    height: 168,
                    width: 138,
                    decoration: BoxDecoration(
                      color:Color.fromARGB(255, 52, 6, 52),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Image(
                      image: AssetImage("Asset/images/gir1.jpg"),
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    width: 34,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Fatimah AL_Zahrani",
                        style: TextStyle(fontSize: 34),
                      ),
                      Text(
                        "Fatimah Mohammed AL_Zahrani",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[700]),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: const [
                          IconeStylw(
                            icon: Icons.mail,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          IconeStylw(
                            icon: Icons.phone,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          IconeStylw(
                            icon: Icons.video_call,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "About Me",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 8,
              ), //عشان احط مسافة بين النصين
              Text(
                "My Name Fatimah Mohammed ALzahrani\nStudent Of CS in AL_baha University\nI love programming and enjoy solving challenges",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey[700]),
              ),
              SizedBox(
                height: 64,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.grey[700],
                          ),
                          SizedBox(width: 4,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Address Of Work",
                                style: TextStyle(fontSize: 24),
                              ),
                              Text(
                                "House 42 Road 100\n Saudi Arabia, AL_baha\nAL_Baha University",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 8,),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.grey[700],
                          ),
                          SizedBox(width: 4,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Address Of Home",
                                style: TextStyle(fontSize: 24),
                              ),
                              Text(
                                "House 1 Road 2\n Saudi Arabia, AL_baha\nAL_Marwa village",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  ClipRRect(
                    //
                    borderRadius: BorderRadius.circular(16),
                    child: Image(
                      image: AssetImage("Asset/images/map_image.JPG"),
                      height: 200,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconeStylw extends StatelessWidget {
  const IconeStylw({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: Colors.deepOrange[8],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Icon(
        icon,
        size: 32,
        color:Color.fromARGB(255, 74, 10, 85),
      ),
    );
  }
}

