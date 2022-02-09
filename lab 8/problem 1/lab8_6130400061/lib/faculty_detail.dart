import 'package:flutter/material.dart';
import 'package:lab8_6130400061/faculty_data_model.dart';

class FacultyDetail extends StatelessWidget {
  final FacultyDataModel facultyDataModel;
  const FacultyDetail({Key? key, required this.facultyDataModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(facultyDataModel.name),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: null,
            child: Text(facultyDataModel.website),
          ),
          const SizedBox(height: 10),
          Text(
            facultyDataModel.thaiName,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Image.network(facultyDataModel.imageUrl),
        ],
      ),
    );
  }
}
