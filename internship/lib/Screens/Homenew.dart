import 'package:flutter/material.dart';
import 'package:internship/Medicine.dart';
import 'package:internship/Report.dart';
import 'package:internship/Screens/Profile.dart';

import 'package:internship/Utils/Helper/helpersfunctions.dart';

class Homenew extends StatefulWidget {
  const Homenew({super.key});

  @override
  _HomenewState createState() => _HomenewState();
}

class _HomenewState extends State<Homenew> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 13,
              ),
              Text(
                'Hi Harry!',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "5 Medicines Left",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.medication),
              onPressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/Images/women.png'),
                ),
              ),
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            indicatorColor: Colors.black,
            labelColor: THelperFunctions.isDarkMode(context)
                ? Colors.white
                : Colors.black,
            tabs: [
              Tab(
                child: Text('<   Thursday, Sep 1   >'),
              ),
              Tab(child: Text('<   Friday, Sep 2   >')),
              Tab(child: Text('<   Saturday, Sep 3   >')),
              Tab(child: Text('<   Monday, Sep 4   >')),
              Tab(child: Text('<   Tuesday, Sep 5   >')),
              Tab(child: Text('<   Wednesday, Sep 6   >')),
              Tab(child: Text('<   Friday, Sep 7   >')),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children:  [
             SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Padding(
                  padding: const EdgeInsets.only(left:20.0,top:10),
                  child: Text("Morning 08:00 am",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                ),
              MedicineContainer(image: "assets/Images/WhatsApp Image 2024-06-25 at 11.11.40 PM.jpeg", medicine:"Calpol 500mg Tablet", time: "Before Breakfast", day: "Day 01 ", color:Colors.greenAccent,Notification: "Taken", ),
                MedicineContainer(image: "assets/Images/WhatsApp Image 2024-06-25 at 11.01.27 PM (1).jpeg", medicine:"Calpol 500mg Tablet", time: "Before Breakfast", day: "Day 27 ", color:Colors.red,Notification: "Missed", ),
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Text("Afternoon 02:00 pm",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                ),
                MedicineContainer(image: "assets/Images/WhatsApp Image 2024-06-25 at 11.01.26 PM.jpeg", medicine:"Calpol 500mg Tablet", time: "After Food", day: "Day 01 ", color:Colors.orangeAccent,Notification: "Snoozed", ),
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Text("Night 09:00 pm",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                ),
                MedicineContainer(image: "assets/Images/WhatsApp Image 2024-06-25 at 11.12.43 PM.jpeg", medicine:"Calpol 500mg Tablet", time: "Before Sleep", day: "Day 03", color:Colors.grey,Notification: "Left", ),
              ],),
            ),
            Center(
                child:
                    Image(image: AssetImage("assets/Images/No medicine.jpeg"))),
            Center(
              child: Image(image: AssetImage("assets/Images/No medicine.jpeg")),
            ),
            Center(
              child: Image(image: AssetImage("assets/Images/No medicine.jpeg")),
            ),
            Center(
              child: Image(image: AssetImage("assets/Images/No medicine.jpeg")),
            ),
            Center(
              child: Image(image: AssetImage("assets/Images/No medicine.jpeg")),
            ),
            Center(
              child: Image(image: AssetImage("assets/Images/No medicine.jpeg")),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  // Handle onPressed action for Home here
                },
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MedicationScreen()));
                },
              ),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.bar_chart),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ReportScreen()));
                },
              ),
              label: 'Report',
            ),
          ],
          currentIndex: 0,
          onTap: (index) {
            // Handle onTap action for navigation items
          },
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
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
      padding: const EdgeInsets.all(20.0),
      child: Container(
          height: THelperFunctions.screenHeight() * 0.13,
          width: THelperFunctions.screenWidth() * 0.8,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 244, 244, 250),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Row(
              children: [
                Container(height: 50, width: 50, child: Image.asset(image)),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0, left: 10),
                  child: Column(
                    children: [
                      Text(
                        medicine,
                        style: TextStyle(
                          fontSize:
                              18, // Replace Sizes.fontSizeLg with a specific size
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            time,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 15),
                          Text(
                            day,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 20),
                  child: Column(
                    children: [
                      Icon(
                        Icons.notifications_outlined,
                        color: color,
                        size: 30,
                      ),
                      SizedBox(height: 3),
                      Text(
                        Notification,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 10),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
