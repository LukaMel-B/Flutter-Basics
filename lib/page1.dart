import 'package:flutter/material.dart';
import 'package:sample_1/main.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.white)),
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          TextButton(
            style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.white)),
            child: const Icon(
              Icons.home_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyApp()),
              );
            },
          ),
        ],
        title: const Text(
          'Vision',
          style: TextStyle(),
        ),
        backgroundColor: const Color.fromARGB(255, 17, 0, 127),
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(color: Color.fromARGB(255, 16, 3, 100)),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/img1.png'),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomCenter,
                        colors: [Colors.white54, Colors.white10])),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'My Vision',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                            color: Colors.white),
                      ),
                      Text(
                        'My vision is to be a part of Google developer team one day. Through which i need to achieve many other physical and skin care goals. I want to lead a healthier and wealthier life. My vision is to be a part of Google developer team one day. Through which i need to achieve many other physical and skin care goals. I want to lead a healthier and wealthier life.',
                        style: TextStyle(
                            fontSize: 15, color: Colors.white.withOpacity(0.7)),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
