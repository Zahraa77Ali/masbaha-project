import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;
  Counter() {
    setState(() {
      count++;
    });
  }

  reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 145, 194, 235),
          centerTitle: true,
          title: Text(
            "وَاسْتَغْفِرُوا اَللَّهَ إِنَّ اَللَّهَ غَفُورٌ رَحِيمٌ",
            style: TextStyle(
                fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.50,
                      height: MediaQuery.of(context).size.height / 1.50,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 145, 194, 235),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 9),
                              blurRadius: 20,
                            )
                          ]),
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 30),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: Text(
                            count.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Transform.translate(
                      offset: Offset(1, 9),
                      child: Container(
                        width: 190,
                        height: 190,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(50),
                                bottomLeft: Radius.circular(50)),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(1, 9),
                                  blurRadius: 20,
                                  color: Colors.black)
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () => Counter(),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 145, 194, 235),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  maximumSize: Size(80, 80)),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  onPressed: () => reset(),
                                  child: Icon(Icons.wifi_protected_setup),
                                  style: ElevatedButton.styleFrom(
                                      foregroundColor: Colors.red),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
