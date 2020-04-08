import 'package:flutter/material.dart';
import 'package:yelpp/models/itemDataParameters.dart';

class ItemsDataProvider with ChangeNotifier {
  List<Appointment> _items = [
    Appointment(
      id: 23,
      day: "Sunday",
      date: "1986-02-06",
      duration: "15 Minutes",
      time: "19-31",
      availability: "YES",
      doc_id: "13",
      patient_id: "5",
      pharmacy_id: "15",
      lap_id: "11",
      doc_name: "Carleton",
      medical_report: "Natus beatae inventore qui optio "
          "voluptatibus minus ut et iure deserunt aliquam alias "
          "corporis quas harum suscipit et ipsa asperiores.",

    ),
    Appointment(
      id: 24,
      day: "monday",
      date: "2020-02-06",
      duration: "15 Minutes",
      time: "19-31",
      availability: "NO",
      doc_id: "13",
      patient_id: "5",
      pharmacy_id: "15",
      lap_id: "11",
      doc_name: "megzaaat",
      medical_report: "Natus beatae inventore qui optio "
          "voluptatibus minus ut et iure deserunt aliquam alias "
          "corporis quas harum suscipit et ipsa asperiores.",
      ),
    Appointment(
      id: 23,
      day: "Sunday",
      date: "1986-02-06",
      duration: "15 Minutes",
      time: "19-31",
      availability: "YES",
      doc_id: "13",
      patient_id: "5",
      pharmacy_id: "15",
      lap_id: "11",
      doc_name: "Carleton",
      medical_report: "Natus beatae inventore qui optio "
          "voluptatibus minus ut et iure deserunt aliquam alias "
          "corporis quas harum suscipit et ipsa asperiores.",

    ),
    Appointment(
      id: 23,
      day: "Sunday",
      date: "1986-02-06",
      duration: "15 Minutes",
      time: "19-31",
      availability: "YES",
      doc_id: "13",
      patient_id: "5",
      pharmacy_id: "15",
      lap_id: "11",
      doc_name: "Carleton",
      medical_report: "Natus beatae inventore qui optio "
          "voluptatibus minus ut et iure deserunt aliquam alias "
          "corporis quas harum suscipit et ipsa asperiores.",
    ),
  ];

  List<Appointment> get items {
    return [..._items];
  }

  Appointment findById(String id) {
    return _items.firstWhere((appoint) => appoint.id == id);
  }

  void addAppointment() {
    // _items.add(value);
    notifyListeners();
  }
}
