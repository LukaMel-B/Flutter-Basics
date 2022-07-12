import 'package:flutter/material.dart';
import 'package:sample_1/gallary-card.dart';
import 'package:sample_1/page1.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: TextButton(
            style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.white)),
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'Gallery',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            children: [
              Container(
                height: 607,
                child: ListView(
                  children: const [
                    GallaryCard(
                      Boxcolor1: Color(0xffD3C8E3),
                      Boxcolor2: Color(0xffC0D98B),
                      ht: 155,
                      wd: 155,
                      text1: 'Box 1',
                      text2: 'Box 2',
                    ),
                    GallaryCard(
                      Boxcolor1: Color(0xffC2E4E6),
                      Boxcolor2: Color(0xffF1C4C0),
                      ht: 155,
                      wd: 155,
                      text1: 'Box 3',
                      text2: 'Box 4',
                    ),
                    GallaryCard(
                      Boxcolor1: Color(0xffF285AD),
                      Boxcolor2: Color.fromARGB(255, 56, 156, 232),
                      ht: 155,
                      wd: 155,
                      text1: 'Box 5',
                      text2: 'Box 6',
                    ),
                    GallaryCard(
                      Boxcolor1: Color(0xffD3C8E3),
                      Boxcolor2: Color(0xffC0D98B),
                      ht: 155,
                      wd: 155,
                      text1: 'Box 1',
                      text2: 'Box 2',
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(
                            Colors.black.withOpacity(0.1))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PageOne()),
                      );
                    },
                    child: Container(
                      width: 110,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Go to vision',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_rounded,
                            size: 15,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
