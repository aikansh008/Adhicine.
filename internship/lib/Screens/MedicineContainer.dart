import 'package:flutter/material.dart';
import 'package:internship/Utils/Helper/helpersfunctions.dart';

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
      padding: const EdgeInsets.all(8.0),
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
