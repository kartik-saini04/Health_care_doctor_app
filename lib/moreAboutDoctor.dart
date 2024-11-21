import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:health_care_app/Modal.dart';

class MoreAboutDoctor extends StatelessWidget {
  const MoreAboutDoctor({super.key, required this.doctor});

  final DoctorDetail doctor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 0,
              top: 0,
              right: 0,
              height: MediaQuery.of(context).size.height * 0.45,
              child: Container(
                width: double.infinity,
                child: Image.asset(
                  doctor.image,
                  fit: BoxFit.cover,
                ),
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.4,
              left: 0,
              right: 0,
              height: MediaQuery.of(context).size.height * 0.69,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Padding(
                  padding:const EdgeInsets.only(top: 20, right: 15, left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        doctor.drName,
                        style:const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                     const SizedBox(
                        height: 10,
                      ),
                      Text(
                        doctor.drCategory,
                        style:const TextStyle(
                            color: Colors.black45,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                     const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'About Doctor',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                     const SizedBox(
                        height: 10,
                      ),
                      Text(
                        doctor.aboutDoctor,
                        style:const TextStyle(
                            height: 1.5,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                     const SizedBox(
                        height: 10,
                      ),
                     const Text(
                        'UpComing Schedule',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    const  SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                            color: doctor.containerColor,
                            borderRadius: BorderRadius.circular(40)),
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                         const   SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 50,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: doctor.color,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Text(
                                  doctor.date,
                                  style:const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            Padding(
                              padding:const EdgeInsets.only(left: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Consultation',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                 const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    doctor.consultainTime,
                                    style:const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )),
          Positioned(
              top: MediaQuery.of(context).padding.top,
              left: 10,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back),
              )),
        ],
      ),
    );
  }
}
