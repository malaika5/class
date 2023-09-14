import 'dart:io';

class Student {
  String name;
  int age;
  String courseName;
  int marks;
  int rollNo;
  // Student(String name, int age, String courseName, int marks) {
  //   this.name = name;
  //   this.age = age;
  //   this.marks = marks;
  //   this.courseName = courseName;
  // }
  //  Student(this.name, this.age, this.marks, this.courseName);
  Student({
    required this.name,
    required this.age,
    required this.marks,
    required this.courseName,
    required this.rollNo,
  });

  void saveStudentDetails() {
    age = 24;
    courseName = 'MAD';
    name = 'ali';
    marks = 90;
    rollNo = 12;
  }

  void showDetail() {
    print('student ${name} is studying');
    print('student age is ${age}');
    print('student marks are ${marks}');
    print(' courseName is ${courseName}');
    print('****\n\n');
  }
}

// Student getStudentDetail() {
//   print('enter your name');
//   String newName = stdin.readLineSync()!;
//   print('enter your age');
//   int newAge = int.parse(stdin.readLineSync()!);
//   print('enter your marks');
//   int newMarks = int.parse(stdin.readLineSync()!);
//   print('enter your course name');
//   String newCourse = stdin.readLineSync()!;

//   print('enter your roll number');
//   int newrollNo = int.parse(stdin.readLineSync()!);
//   Student student = Student(
//       name: newName,
//       age: newAge,
//       marks: newMarks,
//       courseName: newCourse,
//       rollNo: newrollNo);

//   return student;
// }
// Student getStudentDetail(
//     String newName, int newAge, String newCourse, int newMarks, int newrollNo) {

//   Student student = Student(
//       name: newName,
//       age: newAge,
//       marks: newMarks,
//       courseName: newCourse,
//       rollNo: newrollNo);
//   return student;
// }

void showDetail({required List<Student> newStudentList}) {
  for (Student student in newStudentList) {
    print('name=${student.name}');
    print('age=${student.age}');
    print('courseName=${student.courseName}');
    print("rollno=${student.rollNo}");
    print('marks=${student.marks}');
    print('******\n\n');
  }
}

void removeDetailByRollNo() {
  print('enter roll number');
  int rollNo = int.parse(stdin.readLineSync()!);
  studentList.removeWhere((student) => student.rollNo == rollNo);
  print('student of roll no ${rollNo} detail is removed');
}

searchDetail() {
  print('enter roll number');
  int rollNo = int.parse(stdin.readLineSync()!);
  return studentList.where((student) => student.rollNo == rollNo).toList();
}

updateDetailByRollNo() {
  print('enter old roll no');
  int rollNo = int.parse(stdin.readLineSync()!);

  int index = studentList.indexWhere((student) => student.rollNo == rollNo);
  if (index == -1) {
    print(index);

    print('no object is present at this roll number');
  } else {
    print(index);
    studentList[index] = getStudentDetail();
  }
}

// void showStudentByRollNo(int rollno) {
//   if (rollno == rollno) {}
// }
List<Student> studentList = [];
void main() {
  studentList.add(
      Student(name: 'ali', age: 24, marks: 80, courseName: 'MAD', rollNo: 12));
  int choice;
  do {
    print('enter 1 to show detail');
    print('enter 2 to save detail');
    print('enter 3 to delete student  by rollNo');
    print('enter 4 to search student by rollNO');
    print('enter 5 to UPDATE detail by rollno');
    print('enter 6 to exit');
    print('enter your choice');
    choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        {
          showDetail(newStudentList: studentList);
          break;
        }
      case 2:
        {
          studentList.add(getStudentDetail());
          print('student record added');
          break;
        }
      case 3:
        {
          removeDetailByRollNo();
          showDetail(newStudentList: studentList);

          break;
        }
      case 4:
        {
          showDetail(newStudentList: searchDetail());

          break;
        }
      case 5:
        {
          updateDetailByRollNo();
          break;
        }
      default:
        {
          print('invalid input ');
          break;
        }
      // Student std = Student(
      //     name: 'ali', age: 20, marks: 90, courseName: 'MAD', rollNo: 12);
      // studentList.add(std);

      // Student std1 = Student(
      //     name: 'malaika', age: 19, marks: 91, courseName: 'MAD', rollNo: 15);
      // studentList.add(std1);
      // for (var list in studentList) {
      //   showDetail(list);
      // }
    }
  } while (choice != 6);

  // showDetail(studentList[1]);

  // Student std1 = Student('MALIAKA', 19, 90, 'MAD');
  // List<Student> list = [
  //   Student(
  //     name: 'malaika',
  //     courseName: 'MAD',
  //     age: 19,
  //     marks: 90,
  //   ),
  // ];
  // Student a = Student(
  //   name: 'ali',
  //   courseName: 'MAD',
  //   age: 20,
  //   marks: 80,
  // );
  // Student b = Student(
  //   name: 'esha',
  //   courseName: 'MAD',
  //   age: 20,
  //   marks: 85,
  // );
  // Student c = Student(
  //   name: 'abeera',
  //   courseName: 'MAD',
  //   age: 24,
  //   marks: 75,
  // );
  // Student d = Student(
  //   name: 'ali',
  //   courseName: 'MAD',
  //   age: 20,
  //   marks: 80,
  // );
  // list.add(a);
  // list.add(b);
  // list.add(c);
  // list.add(d);
  // list[1].stdStudy();
  // std1.stdStudy();
  // std1.name = 'malaika';
  // print(std1.name);
  // std1.age = 19;
  // print(std1.age);
  // std1.coursename = 'MAD';
  // print(std1.coursename);
  // a.stdStudy();
  // Student('Ali', 20, 88, 'MAD');
  // std1.stdStudy();
}
