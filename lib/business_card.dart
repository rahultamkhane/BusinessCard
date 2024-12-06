import 'package:business_card/user_model.dart';
import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    UserModel user = UserModel(
        name: 'Rahul S. Tamkhane',
        designation: 'Software Developer',
        mobileNumber: '+91 123-456-7890',
        website: 'https://rahultamkhane.github.io',
        address: 'Maharashtra, India');

    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;

    return Container(
      color: const Color.fromARGB(255, 240, 235, 235),
      padding: const EdgeInsets.all(5.0),
      width: screenWidth,
      height: screenHeight,
      child: Column(
        children: [
          Expanded(
            child: Container(),
          ),
          Container(
            color: Colors.white,
            width: screenWidth * 0.95,
            height: screenHeight * 0.4,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user.name,
                        style: const TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        user.designation,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                        child: Divider(
                          color: Colors.red,
                          thickness: 3,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 247, 37, 22),
                            child: Icon(
                              Icons.call_rounded,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            user.mobileNumber,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 247, 37, 22),
                            child: Icon(
                              Icons.language,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            user.website,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 247, 37, 22),
                            child: Icon(
                              Icons.place,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            user.address,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                ClipRect(
                  child: Align(
                    alignment: const Alignment(510, 0),
                    child: Container(
                      width: 390,
                      height: 400,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: Colors.accents,
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRect(
                  child: Align(
                    alignment: const Alignment(550, 0),
                    child: Container(
                      width: 390,
                      height: 400,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 60, 59, 59),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
                const Stack(
                  children: [
                    Align(
                      alignment: Alignment(0.9, -0.3),
                      child: Icon(
                        Icons.store,
                        color: Colors.white,
                        size: 60,
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.95, 0.1),
                      child: Text(
                        'Company',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.85, 0.3),
                      child: Text(
                        'Logo',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}
