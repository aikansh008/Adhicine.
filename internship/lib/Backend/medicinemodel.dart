
class Medicinemodel {
  String medicinename;
  String time;
  
  Medicinemodel({
    required this.medicinename,
    required this.time,
  
  });


  Map<String, dynamic> toJson2() {
    return {
      "Medicine": medicinename,
      "Time":time,
      
    };
  }

  // factory Medicinemodel.fromSnapshot(
  //     DocumentSnapshot<Map<String, dynamic>> document) {
  //   final data = document.data()!;
  //   return Medicinemodel(
  //       task: data["Task"] ?? '',
  //       type: data["Type"] ?? '',
  //       description: data["Description"] ?? '',
  //       category: data["Category"] ?? '');
  // }
}