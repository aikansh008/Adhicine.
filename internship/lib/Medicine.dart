import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:internship/Backend/medicinecontroller.dart';
import 'package:internship/Backend/medicinemodel.dart';
import 'package:internship/Backend/medicinerepo.dart';
import 'package:internship/Controllers/signin_controller.dart';
import 'package:internship/User/usermodel.dart';
import 'package:internship/User/userrepo.dart';
import 'package:internship/Utils/Constants/colors.dart';
import 'package:internship/Utils/Constants/sizes.dart';
import 'package:internship/Utils/Helper/helpersfunctions.dart';

class MedicationScreen extends StatefulWidget {
  const MedicationScreen({super.key});

  @override
  State<MedicationScreen> createState() => _MedicationScreenState();
}

class _MedicationScreenState extends State<MedicationScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> widgetList = [
      ColorContainer(color: Color.fromARGB(255, 245, 181, 202)),
      ColorContainer(color: Color.fromARGB(255, 234, 178, 244)),
      ColorContainer(color: Color.fromARGB(255, 249, 180, 180)),
      ColorContainer(color: Color.fromARGB(255, 195, 246, 196)),
      ColorContainer(color: Color.fromARGB(255, 255, 226, 183)),
      ColorContainer(color: Color.fromARGB(255, 201, 238, 255)),
      ColorContainer(color: const Color.fromARGB(255, 249, 249, 171))
    ];
    final List<Widget> TypeList = [
      Type(
          image:
              "assets/Images/WhatsApp Image 2024-06-24 at 21.18.31_d02720fc.jpg"),
      Type(
        image:
            "assets/Images/WhatsApp Image 2024-06-24 at 21.19.46_731b8ab6.jpg",
      ),
      Type(
          image:
              "assets/Images/WhatsApp Image 2024-06-24 at 21.19.47_97dd7448.jpg")
    ];
    double _sliderValue = 1;
        String _selectedValue0 = 'Start Date';

    String _selectedValue2 = 'End Date';
    String _selectedValue3 = 'Everyday';
    String _selectedValue4 = 'Three Time';
    String _selectedValue5 = 'Dose 1';
    String _selectedValue6 = 'Dose 2';
    String _selectedValue7 = 'Dose 3';

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_sharp),
        title: Text(
          "Add Medicines",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: THelperFunctions.screenHeight() * 0.04,
                  width: THelperFunctions.screenWidth() * 0.4,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 208, 206, 206),
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    controller: MedicineController.medicineController,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 11),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: const Color.fromARGB(255, 183, 183, 183),
                        ),
                        hintText: "Search Medicine Name",
                        hintStyle: TextStyle(
                            color: const Color.fromARGB(255, 197, 195, 195)),
                        suffixIcon: Icon(
                          Icons.mic,
                          color: const Color.fromARGB(255, 198, 197, 197),
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: Sizes.spaceBtwSections,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 11.0),
                child: Text(
                  "Compartment",
                  style: TextStyle(
                    fontSize: Sizes.fontSizeLg,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: Sizes.spaceBtwItems,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 11.0),
                child: SizedBox(
                  height: 50,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: CompContainer(text: (index + 1).toString()));
                    },
                  ),
                ),
              ),
              SizedBox(
                height: Sizes.spaceBtwSections,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 11.0),
                child: Text(
                  "Colour",
                  style: TextStyle(
                    fontSize: Sizes.fontSizeLg,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: Sizes.spaceBtwItems,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 11.0),
                child: SizedBox(
                  height: 50,
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
              SizedBox(
                height: Sizes.spaceBtwSections,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 11.0),
                child: Text(
                  "Type",
                  style: TextStyle(
                    fontSize: Sizes.fontSizeLg,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: Sizes.spaceBtwItems,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 11.0),
                child: SizedBox(
                  height: 90,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: TypeList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, index) {
                      return TypeList[index];
                    },
                  ),
                ),
              ),
              SizedBox(
                height: Sizes.spaceBtwItems,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 11.0),
                child: Text(
                  "Quantity",
                  style: TextStyle(
                    fontSize: Sizes.fontSizeLg,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: Sizes.spaceBtwItems,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        height: THelperFunctions.screenHeight() * 0.04,
                        width: THelperFunctions.screenWidth() * 0.3,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.2,
                                color:
                                    const Color.fromARGB(255, 182, 181, 181)),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                          "Take 1/2 Pill",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))),
                    Container(
                      height: 30,
                      width: 30,
                      child: Center(
                          child: Icon(
                        Icons.remove,
                        color: color.primary,
                      )),
                      decoration: BoxDecoration(
                          border: Border.all(color: color.primary),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      child: Center(
                          child: Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                      decoration: BoxDecoration(
                        border: Border.all(color: color.primary),
                        borderRadius: BorderRadius.circular(5),
                        color: color.primary,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: Sizes.spaceBtwItems,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 11.0, right: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Count",
                      style: TextStyle(
                        fontSize: Sizes.fontSizeLg,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 235, 232, 232)),
                      child: Center(child: Text("01")),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0.0, right: 0.0),
                child: Slider(
                  thumbColor: color
                      .primary, // Change this to color.primary if you have a color object
                  value: _sliderValue,
                  min: 1,
                  max: 100,
                  divisions: 100,
                  label: _sliderValue.round().toString(),
                  onChanged: (value) {
                    setState(() {
                      _sliderValue = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "01",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "100",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: Sizes.spaceBtwItems),
              Padding(
                padding: const EdgeInsets.only(left: 11.0),
                child: Text(
                  "Set Date",
                  style: TextStyle(
                    fontSize: Sizes.fontSizeLg,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: Sizes.spaceBtwItems),
              Padding(
                padding: const EdgeInsets.only(left: 11.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: THelperFunctions.screenWidth() * 0.2,
                        child: DropdownButton<String>(
                          value: _selectedValue0,
                          icon: Icon(Icons.arrow_forward_ios),
                          iconSize: 24,
                          elevation: 16,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                          underline: Container(
                            height: 2,
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedValue0 = newValue!;
                            });
                          },
                          items: <String>[
                            'Start Date',
                            'Tommorow',
                            'Option 3',
                            'Option 4'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, right: 65),
                                child: Text(value),
                              ),
                            );
                          }).toList(),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: DropdownButton<String>(
                          value: _selectedValue2,
                          icon: Icon(Icons.arrow_forward_ios),
                          iconSize: 24,
                          elevation: 16,
                          style: TextStyle(
                              color: Color.fromARGB(255, 40, 39, 39),
                              fontWeight: FontWeight.bold),
                          underline: Container(
                            height: 0,
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedValue2 = newValue!;
                            });
                          },
                          items: <String>[
                            'End Date',
                            'Tomorrow',
                            'Option 3',
                            'Option 4'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, right: 50),
                                child: Text(value),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ]),
              ),
              SizedBox(height: Sizes.spaceBtwItems),
              Padding(
                padding: const EdgeInsets.only(left: 11.0),
                child: Text(
                  "Frequency of Days",
                  style: TextStyle(
                    fontSize: Sizes.fontSizeLg,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Container(
                  height: 40,
                  width: THelperFunctions.screenWidth() * 0.4,
                  child: DropdownButton<String>(
                    value: _selectedValue3,
                    icon: Icon(Icons.arrow_forward_ios),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    underline: Container(
                      height: 2,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedValue3 = newValue!;
                      });
                    },
                    items: <String>[
                      'Everyday',
                      'Tommorow',
                      'Option 3',
                      'Option 4'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 233),
                          child: Text(value),
                        ),
                      );
                    }).toList(),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              SizedBox(height: Sizes.spaceBtwItems),
              Padding(
                padding: const EdgeInsets.only(left: 11.0),
                child: Text(
                  "How many times a Day",
                  style: TextStyle(
                    fontSize: Sizes.fontSizeLg,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Container(
                  height: 40,
                  width: THelperFunctions.screenWidth() * 0.4,
                  child: DropdownButton<String>(
                    value: _selectedValue4,
                    icon: Icon(Icons.arrow_forward_ios),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    underline: Container(
                      height: 2,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedValue4 = newValue!;
                      });
                    },
                    items: <String>[
                      'Three Time',
                      'Two Time',
                      'One Time',
                      'Option 4'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 233),
                          child: Text(value),
                        ),
                      );
                    }).toList(),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 11.0),
                child: DropdownButton<String>(
                  value: _selectedValue5,
                  icon: Icon(Icons.arrow_forward_ios_rounded),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  underline: Container(
                    height: 2,
                    color: const Color.fromARGB(255, 213, 213, 213),
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedValue5 = newValue!;
                    });
                  },
                  items: <String>['Dose 1', 'Two Time', 'One Time', 'Option 4']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 242),
                        child: Text(value),
                      ),
                    );
                  }).toList(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 11.0),
                child: DropdownButton<String>(
                  value: _selectedValue6,
                  icon: Icon(Icons.arrow_forward_ios),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  underline: Container(
                    height: 2,
                    color: const Color.fromARGB(255, 213, 213, 213),
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedValue6 = newValue!;
                    });
                  },
                  items: <String>['Dose 2', 'Two Time', 'One Time', 'Option 4']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 242),
                        child: Text(value),
                      ),
                    );
                  }).toList(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 11.0),
                child: DropdownButton<String>(
                  value: _selectedValue7,
                  icon: Icon(Icons.arrow_forward_ios),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  underline: Container(
                    height: 2,
                    color: const Color.fromARGB(255, 213, 213, 213),
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedValue7 = newValue!;
                    });
                  },
                  items: <String>['Dose 3', 'Two Time', 'One Time', 'Option 4']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 242),
                        child: Text(value),
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: Sizes.spaceBtwItems),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    LastContainer(
                      text: "Before Food",
                      color: const Color.fromARGB(255, 114, 136, 243),
                    ),
                    LastContainer(
                      text: "After Food",
                      color: const Color.fromARGB(255, 179, 191, 249),
                    ),
                    LastContainer(
                        text: "Before Sleep",
                        color: const Color.fromARGB(255, 179, 191, 249))
                  ],
                ),
              ),
              SizedBox(height: Sizes.spaceBtwItems),
              Center(
                child: Container(
                  height: THelperFunctions.screenHeight() * 0.05,
                  width: THelperFunctions.screenWidth() * 0.38,
                  child: ElevatedButton(
                      onPressed: () async {
                       UserModel? usermodel = await UserRepository.getuseremail(
                        SigninController.email.text);
                    Medicinemodel newTask = MedicineController.createMedicine(
                        MedicineController.medicineController.toString(),"28 Days");
                    MedicineRepository.addMedicine(newTask, usermodel!, context);
                    MedicineRepository.getUserDetail(SigninController.email.text);
                      },
                      child: Text(
                        "Add",
                        style: TextStyle(color: color.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: color.primary)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class LastContainer extends StatelessWidget {
  LastContainer({
    super.key,
    required this.text,
    required this.color,
  });
  String text;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(child: Text(text)),
    );
  }
}

// ignore: must_be_immutable
class Type extends StatelessWidget {
  Type({
    super.key,
    required this.image,
  });
  String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white)),
          child: Image.asset(image)),
    );
  }
}

// ignore: must_be_immutable
class ColorContainer extends StatelessWidget {
  ColorContainer({
    super.key,
    required this.color,
  });
  Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5.0),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: color,
        ),
      ),
    );
  }
}

class CompContainer extends StatelessWidget {
  const CompContainer({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 40,
      child: Center(
          child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
      decoration: BoxDecoration(
          border: Border.all(
              color: const Color.fromARGB(255, 195, 191, 191), width: 1.5),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
