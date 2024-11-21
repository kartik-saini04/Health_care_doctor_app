import 'package:health_care_app/moreAboutDoctor.dart';
import 'package:flutter/material.dart';
import 'package:health_care_app/Modal.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'Images/menu.png',
                  height: 50,
                  width: 50,
                ),
                Image.asset(
                  'Images/doctoe.png',
                  height: 50,
                  width: 50,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Choose your doctor",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "100+ Avilable",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              child: TextField(
                  decoration: InputDecoration(
                      label: const Text('search'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)))),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 25,
              width: double.infinity,
              child: Row(
                children: [
                  const Text(
                    "Category",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  ElevatedButton(
                      onPressed: () {}, child: const Text('Children')),
                  const SizedBox(
                    width: 5,
                  ),
                  ElevatedButton(onPressed: () {}, child: const Text('Adult')),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: doctorItems.length,
                    itemBuilder: (context, index) {
                      final doctor = doctorItems[index];
                      return Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Card(
                          color: Colors.white,
                          child: Column(
                            children: [
                              Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage(doctor.categoryImage),
                                          fit: BoxFit.cover),
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15)))),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                doctor.drCategory,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text("${doctor.noOfDoctor.toString()} doctors")
                            ],
                          ),
                        ),
                      );
                    })),
            const Text(
              'Available Doctors',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: doctorItems.length,
                    itemBuilder: (context, index) {
                      final doctor = doctorItems[index];
                      return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            color: doctor.containerColor,
                            elevation: 5,
                            borderRadius: BorderRadius.circular(20),
                            child: Column(
                              children: [
                                SizedBox(
                                    child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundImage:
                                            AssetImage(doctor.image),
                                        radius: 30,
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: 13, left: 15),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  doctor.drName,
                                                  style:
                                                      TextStyle(fontSize: 16),
                                                ),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 15,
                                                  color: Colors.yellow,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 15,
                                                  color: Colors.yellow,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 15,
                                                  color: Colors.yellow,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 15,
                                                  color: Colors.yellow,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 15,
                                                  color: Colors.yellow,
                                                )
                                              ],
                                            ),
                                            Text(doctor.drCategory),
                                            Row(
                                              children: [
                                                Container(
                                                    height: 25,
                                                    width: 50,
                                                    decoration: BoxDecoration(
                                                      color: doctor.color,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        '${doctor.time1.toString()} : 00',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    )),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                    '${doctor.time2.toString()} : 00'),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                    '${doctor.time3.toString()} : 00'),
                                                const SizedBox(
                                                  width: 22.5,
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                MoreAboutDoctor(
                                                                    doctor:
                                                                        doctor)));
                                                  },
                                                  child: Container(
                                                      height: 35,
                                                      width: 50,
                                                      decoration: BoxDecoration(
                                                          color: doctor.color,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          20),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          20))),
                                                      child: Icon(
                                                        Icons.arrow_forward,
                                                        color: Colors.white,
                                                      )),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ))
                              ],
                            ),
                          ));
                    })),
          ],
        ),
      ),
    );
  }
}
