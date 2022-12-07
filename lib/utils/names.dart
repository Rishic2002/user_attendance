import 'package:flutter/material.dart';

//import 'package:syncfusion_flutter_xlsio/xlsio.dart' hide Column;

//use excellist()

/*

class excellist extends StatelessWidget {
  const excellist({super.key});
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.lightBlue,
                disabledForegroundColor: Colors.grey,
              ),
              onPressed: generateExcel,
              child: const Text('Generate Excel'),
            )
          ],
        ),
      ),
    );
  }
}

class _Report {
  _Report(this.name, this.phnumber, this.emailid,this.rollno);
  late String name;
  late int phnumber;
  late String emailid;
  late int rollno;
}

Future<void> generateExcel() async {
final Workbook workbook = Workbook();

// Accessing sheet via index.
final Worksheet sheet = workbook.worksheets[0];

// Create Data Rows for importing.
final List<ExcelDataRow> dataRows = _buildReportDataRows();
sheet.importData(dataRows, 1, 1);

// Save and dispose workbook.
final List<int> bytes = workbook.saveAsStream();
File('Importlist.xlsx').writeAsBytes(bytes!);
workbook.dispose();
}

List<ExcelDataRow> _buildReportDataRows() {
  List<ExcelDataRow> excelDataRows = <ExcelDataRow>[];
  final List<_Report> reports = _getSalesReports();

  excelDataRows = reports.map<ExcelDataRow>((_Report dataRow) {
    return ExcelDataRow(cells: <ExcelDataCell>[
      ExcelDataCell(columnHeader: 'NAME', value: dataRow.name),
      ExcelDataCell(
          columnHeader: 'PHONE NUMBER', value: dataRow.phnumber),
      ExcelDataCell(
          columnHeader: 'EMAIL-ID', value: dataRow.emailid),
      ExcelDataCell(
          columnHeader: 'ROLL-NUMBER', value: dataRow.rollno),

    ]);
  }).toList();

  return excelDataRows;
}

// Create List objects for Report class.
List<_Report> _getSalesReports() {
  final List<_Report> reports = <_Report>[];
  reports.add(_Report('Andy Bernard', 45000,'abc@xyz.com',202115));
  reports.add(_Report('Jim Halpert', 34000, 'abc@xyz.com',202115));
  reports.add(_Report('Karen Fillippelli', 75000,'abc@xyz.com',202115));
  reports.add(_Report('Phyllis Lapin', 56500, 'abc@xyz.com',202115));
  reports.add(_Report('Stanley Hudson', 46500, ' abc@xyz.com',202115));
  return reports;
}
*/

List<String> Program = [
  "B.Tech",
  "MCA",
  "M.TECH",
];
List<String> School = [
  "SOET",
  "CSIT",
];
// List<String> Year = ["2021", "2022"];
List<String> Semester = [
  "1",
  "2",
  "3",
  "4",
  "5",
  "6",
  "7",
  "8",
];
List<String> Batch = ["G1", "G2", "G3", "G1 & G2"];
List<String> Branch = ["C.S.I.T", "CSE", "CIVIL", "ELECTRICAL", "PPT"];
List<String> Subject = ["MATLAB", "CLOUD COMPUTING", "CP", "Machine Learning"];
List<String> Students = [
  "ANKIT ",
  "ABHISHEK TIWARI",
  "ABHISHEK RAO",
  "ANUPAM ",
  "PANKAJ",
  "PARMESHWAR GUPTA",
  "PRADHUMAN ",
  "ANKITANSHU",
  "JITENDRA",
  "JOGINDER",
  "DEWANG ",
  "AJAY ",
  "SOURABH ",
];
List<String> Month = ["Janurary", "Feburary", "March"];
List<String> Date = [
  "1",
  "2",
  "3",
  "4",
  "5",
  "6",
  "7",
  "8",
  "9",
  "10",
  "11",
  "12",
  "13",
  "14",
  "15",
  "16",
  "17",
  "18",
  "19",
  "20",
  "21"
];
List<String> CollegeYear = ["1st", "2nd", "3rd", "4th"];
List<String> Enrollment = [
  "191901",
  "191902",
  "191903",
  "191904",
  "191905",
  "191906",
  "191907",
  "191908",
  "191909",
  "191910",
  "191911",
  "191912",
  "191913",
  "191914",
  "191915",
  "191916",
  "191917",
  "191918",
  "191919"
];
List<String> StudentEmail = [
  "191901@student.cuh.ac.in",
  "191902@student.cuh.ac.in",
  "191903@student.cuh.ac.in",
  "191904@student.cuh.ac.in",
  "191905@student.cuh.ac.in",
  "191906@student.cuh.ac.in",
  "191907@student.cuh.ac.in",
  "191908@student.cuh.ac.in",
  "191909@student.cuh.ac.in",
  "191910@student.cuh.ac.in",
  "191911@student.cuh.ac.in",
  "191912@student.cuh.ac.in",
  "191913@student.cuh.ac.in",
  "191914@student.cuh.ac.in",
  "191915@student.cuh.ac.in",
  "191916@student.cuh.ac.in",
  "191917@student.cuh.ac.in",
  "191918@student.cuh.ac.in",
  "191919@student.cuh.ac.in"
];
List<String> FacultyDOB = ["11/11/99"];
List<String> FacultiesID = [
  "Faculty01",
];
List<String> FacultiesEmailID = [
  "Faculty01@cuh.ac.in",
];
List<String> PhoneNo = ["7777******"];
List<bool> StudentisActive = [
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
];
List<bool> FacultiesisActive = [
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
];
List<String> Faculties = [
  "Rakesh Dhiman",
  "Binay ray",
  "Hemlata ",
  "Vishal",
  "Anant Bara",
  "Neha Gupta",
  "Ashish bansal",
  "Manish Khule",
  "Ashish bansal",
  "Neha Gupta",
  "Ashish bansal",
  "Manish Khule",
  "Ashish bansal",
  "Neha Gupta",
  "Ashish bansal",
  "Manish Khule",
];
List<int> isSelectedList = [
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
];
List attendencecolor = [
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
];
//  0, /*Absent*/    1, /*Present*/    2 /*Absent*/
String semesterdropdownValue = Semester[0];
String batchdropdownValue = Batch[0];
String schooldropdownValue = School[0];
String subjectdropdownValue = Subject[0];
String yeardropdownValue = CollegeYear[0];
String programdropdownValue = Program[0];
String branchdropdownValue = Branch[0];
String facultiesdropdownValue = Faculties[0];
Map<String, String> values = {
  programdropdownValue: "MBA",
  semesterdropdownValue: "1",
  batchdropdownValue: "B1",
  schooldropdownValue: "SCSIT",
  subjectdropdownValue: "Artificial Intelegence",
  yeardropdownValue: "3rd",
  branchdropdownValue: "Mecha",
  facultiesdropdownValue: "Neha Gupta",
};