import 'package:flutter/material.dart';
import 'package:lab8_6130400061/faculty_detail.dart';
import 'faculty_data_model.dart';

class FacultyList extends StatefulWidget {
  const FacultyList({Key? key}) : super(key: key);

  @override
  _FacultyListState createState() => _FacultyListState();
}

class _FacultyListState extends State<FacultyList> {
  static List<String> facultyName = ['Engineering', 'Medicine', 'Architecture'];
  static List<String> facultyThaiName = [
    'วิศวกรรมศาสตร์',
    'แพทยศาสตร์',
    'สถาปัตยกรรมศาสตร์'
  ];
  static List<String> url = [
    'https://images-ext-2.discordapp.net/external/DcRYMR1g_Ugacb7GWhMq3gtlxHXJqR7OUqPSu_Bt8b8/https/library.kku.ac.th/enlib/admin/images/2018-06-291530257793.jpg',
    'https://admissions.kku.ac.th/wp-content/uploads/2021/08/03.jpg',
    'https://www.u-review.in.th/timthumb.php?src=/uploads/contents/20160811142552uE0fuxK.jpg&w=923&h=520'
  ];
  static List<String> website = [
    'https://www.en.kku.ac.th/web/',
    'https://md.kku.ac.th/',
    'https://arch.kku.ac.th/web/'
  ];

  final List<FacultyDataModel> facultyData = List.generate(
    facultyName.length,
    (index) => FacultyDataModel(
      facultyName[index],
      facultyThaiName[index],
      url[index],
      website[index],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KKU Faculties'),
      ),
      body: ListView.builder(
        itemCount: facultyData.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(facultyData[index].name),
              leading: const Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => FacultyDetail(
                      facultyDataModel: facultyData[index],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
