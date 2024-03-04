class Shift {
  final String id;
  final String position;
  final String name;
  final String logo;
  final String address;
  final String date;
  final String time;
  final String payRate;
  final String status;

  Shift({
    required this.id,
    required this.position,
    required this.name,
    required this.logo,
    required this.address,
    required this.date,
    required this.time,
    required this.payRate,
    required this.status,
  });
}

List<Shift> myShifts = myShiftsData
    .map((item) => Shift(
          id: item['id'] ?? "",
          position: item['position'] ?? "",
          name: item['name'] ?? "",
          logo: item['logo'] ?? "",
          address: item['address'] ?? "",
          date: item['date'] ?? "",
          time: item['time'] ?? "",
          payRate: item['payRate'] ?? "",
          status: item['status'] ?? "",
        ))
    .toList();

var myShiftsData = [
  {
    "id": "123",
    "position": "PCA",
    "name": "St. Joseph's Hospital",
    "logo": "assets/images/st_josephs_hospital.png",
    "address": "123 Main St, Syracuse, NY 13202",
    "date": "Tuesday, March 17",
    "time": "7:00 AM - 3:00 PM",
    "payRate": "20.00/hr",
    "status": "Completed"
  },
];

List<Shift> shifts = shiftsData
    .map((item) => Shift(
          id: item['id'] ?? "",
          position: item['position'] ?? "",
          name: item['name'] ?? "",
          logo: item['logo'] ?? "",
          address: item['address'] ?? "",
          date: item['date'] ?? "",
          time: item['time'] ?? "",
          payRate: item['payRate'] ?? "",
          status: item['status'] ?? "",
        ))
    .toList();

var shiftsData = [
  {
    "id": "123",
    "position": "PCA",
    "name": "St. Joseph's Hospital",
    "logo": "assets/images/st_josephs_hospital.png",
    "address": "123 Main St, Syracuse, NY 13202",
    "date": "Tuesday, March 17",
    "time": "7:00 AM - 3:00 PM",
    "payRate": "20.00/hr",
    "status": "Open"
  },
  {
    "id": "456",
    "position": "RN",
    "name": "Crouse Hospital",
    "logo": "assets/images/crouse_hospital.png",
    "address": "736 Irving Ave, Syracuse, NY 13210",
    "date": "Wednesday, March 18",
    "time": "3:00 PM - 11:00 PM",
    "payRate": "30.00/hr",
    "status": "Open"
  },
  {
    "id": "789",
    "position": "LPN",
    "name": "Upstate University Hospital",
    "logo": "assets/images/upstate_university_hospital.png",
    "address": "750 E Adams St, Syracuse, NY 13210",
    "date": "Thursday, March 19",
    "time": "11:00 PM - 7:00 AM",
    "payRate": "25.00/hr",
    "status": "Open"
  },
  {
    "id": "101",
    "position": "PCA",
    "name": "St. Joseph's Hospital",
    "logo": "assets/images/st_josephs_hospital.png",
    "address": "123 Main St, Syracuse, NY 13202",
    "date": "Tuesday, March 17",
    "time": "7:00 AM - 3:00 PM",
    "payRate": "20.00/hr",
    "status": "Open"
  },
  {
    "id": "102",
    "position": "RN",
    "name": "Crouse Hospital",
    "logo": "assets/images/crouse_hospital.png",
    "address": "736 Irving Ave, Syracuse, NY 13210",
    "date": "Wednesday, March 18",
    "time": "3:00 PM - 11:00 PM",
    "payRate": "30.00/hr",
    "status": "Open"
  },
  {
    "id": "103",
    "position": "LPN",
    "name": "Upstate University Hospital",
    "logo": "assets/images/upstate_university_hospital.png",
    "address": "750 E Adams St, Syracuse, NY 13210",
    "date": "Thursday, March 19",
    "time": "11:00 PM - 7:00 AM",
    "payRate": "25.00/hr",
    "status": "Open"
  },
  {
    "id": "104",
    "position": "PCA",
    "name": "St. Joseph's Hospital",
    "logo": "assets/images/st_josephs_hospital.png",
    "address": "123 Main St, Syracuse, NY 13202",
    "date": "Tuesday, March 17",
    "time": "7:00 AM - 3:00 PM",
    "payRate": "20.00/hour",
    "status": "Open"
  },
  {
    "id": "105",
    "position": "RN",
    "name": "Crouse Hospital",
    "logo": "assets/images/crouse_hospital.png",
    "address": "736 Irving Ave, Syracuse, NY 13210",
    "date": "Wednesday, March 18",
    "time": "3:00 PM - 11:00 PM",
    "payRate": "30.00/hour",
    "status": "Open"
  },
  {
    "id": "106",
    "position": "LPN",
    "name": "Upstate University Hospital",
    "logo": "assets/images/upstate_university_hospital.png",
    "address": "750 E Adams St, Syracuse, NY 13210",
    "date": "Thursday, March 19",
    "time": "11:00 PM - 7:00 AM",
    "payRate": "25.00/hour",
    "status": "Open"
  },
];
