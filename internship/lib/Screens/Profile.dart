import 'package:flutter/material.dart';
import 'package:internship/Screens/Homenew.dart';
import 'package:internship/Screens/signin.dart';
import 'package:internship/Utils/Constants/colors.dart';
import 'package:internship/Utils/Constants/sizes.dart';
import 'package:internship/settingMenu/setting_menu.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    List<String> imagePaths = [
      "assets/Images/th.jpeg",
      "assets/Images/women.png",
      "assets/Images/w1.png",
      "assets/Images/add.jpeg",
    ];
    List<String> textpaths = [
      "Dipa Luna",
      "Roz Sod..",
      "Sunny tu..",
      "Add",
    ];
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          IconButton(
              onPressed: () {
                 Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => Homenew()));
              },
              icon: Icon(
                Icons.arrow_back_rounded,
                color: color.dark,
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/Images/women.png"),
                ),
                title: Text("Take care!",
                    style: TextStyle(
                      fontStyle:
                          Theme.of(context).textTheme.titleLarge!.fontStyle,
                      fontSize: 10,
                    )),
                subtitle: Text("Richa Bose",
                    style: TextStyle(
                        fontStyle: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .fontStyle,
                        fontSize: 19,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                indent: BorderSide.strokeAlignCenter,
              )
            ],
          ),

          ////BODY
          Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Settings",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .fontStyle,
                          color: Colors.black,
                          fontSize: 12),
                    ),
                  ),
                  const SizedBox(height: 5),
                  //accountSettings
                  SettingMenu(
                      icon: Icons.notifications_outlined,
                      title: 'Notifications',
                      subTitle: 'Check your medicine notification',
                      onTap: () {}),
                  SettingMenu(
                      icon: Icons.volume_up_outlined,
                      title: 'Sound',
                      subTitle: 'Ring, Silent, Vibrate',
                      onTap: () {}),
                  SettingMenu(
                      icon: Icons.person_outline,
                      title: 'Manage Your Account',
                      subTitle: 'Password,Email ID, Phone Number',
                      onTap: () {}),
                  SettingMenu(
                      icon: Icons.notifications_outlined,
                      title: 'Notifications',
                      subTitle: 'Check your medicine notification',
                      onTap: () {}),
                  SettingMenu(
                      icon: Icons.notifications_outlined,
                      title: 'Notifications',
                      subTitle: 'Check your medicine notification',
                      onTap: () {}),
                  //App settings
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Device",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .fontStyle,
                          color: Colors.black,
                          fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 213, 218, 246),
                          borderRadius: BorderRadius.circular(10)),
                      width: double.infinity,
                      height: 170,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            SettingMenu(
                                icon: Icons.volume_up_outlined,
                                title: 'Connect',
                                subTitle: 'Ring, Silent, Vibrate',
                                onTap: () {}),
                            Container(
                              height: 70,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: SettingMenu(
                                  icon: Icons.volume_up_outlined,
                                  title: 'Sound Option',
                                  subTitle: 'Ring, Silent, Vibrate',
                                  onTap: () {}),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Caretakers: 03",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .fontStyle,
                          color: Colors.black,
                          fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 213, 218, 246),
                          borderRadius: BorderRadius.circular(10)),
                      width: double.infinity,
                      height: 120,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0, left: 7),
                              child: SizedBox(
                                height: 91,
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: 4,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (_, index) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(right: 18),
                                        child: Column(
                                          children: [
                                            Container(
                                              width: 50,
                                              padding: const EdgeInsets.all(Sizes
                                                  .sm), // Adjust padding as needed
                                              decoration: BoxDecoration(
                                                color: Colors
                                                    .white, // Use Colors.white instead of ecolor.white if ecolor is not defined
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                              ),
                                              child: Container(
                                                // height: 30,
                                                //  width: 10,
                                                child: Image.asset(
                                                    imagePaths[index],
                                                    fit: BoxFit.fill),
                                              ),
                                            ),

                                            SizedBox(
                                                height:
                                                    Sizes.spaceBtwItems / 2),
                                            Text(
                                              textpaths[index],
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelMedium!
                                                  .apply(color: Colors.black),
                                            ), // Add space between circles if needed
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Doctor",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .fontStyle,
                          color: Colors.black,
                          fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 213, 218, 246),
                          borderRadius: BorderRadius.circular(10)),
                      height: 145,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color.fromARGB(255, 121, 135, 247)),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Add Your Doctor",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Or Use",
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "invite link",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 226, 191, 96),
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Privacy Policy",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .fontStyle,
                          color: Colors.black,
                          fontSize: 12),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Terms of Use",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .fontStyle,
                          color: Colors.black,
                          fontSize: 12),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Rate Us",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .fontStyle,
                          color: Colors.black,
                          fontSize: 12),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Share",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .fontStyle,
                          color: Colors.black,
                          fontSize: 12),
                    ),
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signin()));
                  },
                  child: Text(
                    "Log Out",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white), // Background color
                    side: MaterialStateProperty.all<BorderSide>(
                      BorderSide(
                          color: Color.fromARGB(255, 213, 218, 246),
                          width: 2), // Outline color and width
                    ),
                  )),
            ),
          ),
        ],
      )),
    );
  }
}
