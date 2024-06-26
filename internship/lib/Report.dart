import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:internship/Utils/Constants/colors.dart';
import 'package:internship/Utils/Constants/sizes.dart';
import 'package:internship/Utils/Helper/helpersfunctions.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgetList = [
      NumberList(text: "SUN", numb: "1", c1: color.primary, c2: Colors.white),
      NumberList(
          text: "MON",
          numb: "2",
          c1: const Color.fromARGB(255, 185, 194, 238),
          c2: Colors.black),
      NumberList(
          text: "TUE",
          numb: "3",
          c1: const Color.fromARGB(255, 185, 194, 238),
          c2: Colors.black),
      NumberList(
          text: "WED",
          numb: "4",
          c1: const Color.fromARGB(255, 185, 194, 238),
          c2: Colors.black),
      NumberList(
          text: "THU",
          numb: "5",
          c1: const Color.fromARGB(255, 185, 194, 238),
          c2: Colors.black),
      NumberList(
          text: "FRI",
          numb: "6",
          c1: const Color.fromARGB(255, 185, 194, 238),
          c2: Colors.black),
      NumberList(
          text: "SAT",
          numb: "7",
          c1: const Color.fromARGB(255, 185, 194, 238),
          c2: Colors.black)
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Report",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                height: THelperFunctions.screenHeight() * 0.15,
                width: THelperFunctions.screenWidth() * 0.8,
                child: Card(
                    color: Color.fromARGB(255, 255, 255, 255),
                    elevation: 1.2,
                    shadowColor: const Color.fromARGB(255, 132, 129, 129),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Today's Report",
                            style: TextStyle(
                                fontSize: Sizes.fontSizeLg,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              NumberConatiner(number: "5", text: "Total"),
                              NumberConatiner(number: "3", text: "Taken"),
                              NumberConatiner(number: "1", text: "Missed"),
                              NumberConatiner(number: "1", text: "Snoozed"),
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
              SizedBox(height: Sizes.spaceBtwItems),
              Container(
                  height: MediaQuery.of(context).size.height * 0.17,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Card(
                    color: Colors.white,
                    elevation: 1.2,
                    shadowColor: const Color.fromARGB(255, 132, 129, 129),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 15.0, left: 15.0, right: 15.0, bottom: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Check Dashboard",
                            style: TextStyle(
                              fontSize:
                                  18.0, // Replace Sizes.fontSizeLg with a specific size
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Here you will find everything related to your active and past medicines.",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(255, 154, 152, 152),
                                  ),
                                  maxLines: 2,
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                  height: 70, // Adjust height as needed
                                  width: 70, // Adjust width as needed
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                      "assets/Images/WhatsApp Image 2024-06-25 at 13.03.01_5611e420.jpg",
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
              SizedBox(
                height: Sizes.spaceBtwSections,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Text(
                      "Check History",
                      style: TextStyle(
                        fontSize:
                            18.0, // Replace Sizes.fontSizeLg with a specific size
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: color.primary,
                  ),
                ],
              ),
              SizedBox(height: Sizes.spaceBtwItems),
              Padding(
                padding: const EdgeInsets.only(left: 3.0),
                child: SizedBox(
                  height: 100,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: widgetList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, index) {
                      return widgetList[index];
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 11.0),
                child: Text(
                  "Morning 08:00 am",
                  style: TextStyle(
                    fontSize:
                        18.0, // Replace Sizes.fontSizeLg with a specific size
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: Sizes.spaceBtwItems),
              MedicineContainer(image: "assets/Images/WhatsApp Image 2024-06-25 at 18.26.40_307bf6de.jpg", medicine:"Calpol 500mg Tablet", time: "Before Breakfast", day: "Day 01", color:Colors.green,Notification: "Taken", ),
              SizedBox(height:10),
              MedicineContainer(image:"assets/Images/WhatsApp Image 2024-06-25 at 18.27.58_53f3feda.jpg", medicine:"Calpol 500mg Tablet", time: "Before Breakfast", day: "Day 27", color:Colors.red,Notification: "Missed", ),
               SizedBox(height: Sizes.spaceBtwItems),
                Padding(
                padding: const EdgeInsets.only(left: 11.0),
                child: Text(
                  "Afternoon 02:00 pm ",
                  style: TextStyle(
                    fontSize:
                        18.0, // Replace Sizes.fontSizeLg with a specific size
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
                 MedicineContainer(image: "assets/Images/WhatsApp Image 2024-06-25 at 18.26.40_307bf6de.jpg", medicine:"Calpol 500mg Tablet", time: "Before Breakfast", day: "Day 01 ", color:Colors.orangeAccent,Notification: "Snoozed", ),
            ])),
      ),
    );
  }
}

// ignore: must_be_immutable
class MedicineContainer extends StatelessWidget {
 MedicineContainer({
    super.key,
    required this.image,
    required this.medicine,
    required this.time,
    required this.day,
    required this.color,
    required this.Notification,
  });
  String image;
  String medicine;
  String time;
  String day;
  Color color;
  String Notification;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
          height: THelperFunctions.screenHeight() * 0.13,
          width: THelperFunctions.screenWidth() * 0.8,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 235, 237, 244),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Row(
              children: [
                Container(height: 50, width: 50, child: Image.asset(image)),
                SizedBox(width: 15),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Column(
                    children: [
                      Text(
                        medicine,
                        style: TextStyle(
                          fontSize: Sizes
                              .fontSizeLg, // Replace Sizes.fontSizeLg with a specific size
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            time,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: Sizes.fontSizeMd,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            day,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: Sizes.fontSizeMd,
                              
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.notifications_outlined,
                        color: color,
                        size: 40,
                      ),
                      SizedBox(height:5),
                      Text(Notification,style: TextStyle(color:Colors.black),)
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}

// ignore: must_be_immutable
class NumberList extends StatelessWidget {
  NumberList({
    super.key,
    required this.text,
    required this.numb,
    required this.c1,
    required this.c2,
  });
  String text;
  String numb;
  Color c1;
  Color c2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(color: Color.fromARGB(255, 177, 176, 176)),
        ),
        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: c1, borderRadius: BorderRadius.circular(50)),
            child: Center(
                child: Text(
              numb,
              style: TextStyle(color: c2, fontWeight: FontWeight.bold),
            )),
          ),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class NumberConatiner extends StatelessWidget {
  NumberConatiner({
    super.key,
    required this.number,
    required this.text,
  });
  String number;
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 50,
      child: Column(
        children: [
          Text(
            number,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: color.primary),
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 10,
                color: Color.fromARGB(255, 208, 206, 206),
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
