abstract class Role {
  void displayRole();
}


class Person implements Role {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  void displayRole() {

  }
}


class Student extends Person {
  String studentID;
  String grade;
  List<int> courseScores;

  Student(String name, int age, String address, this.studentID, this.grade, this.courseScores)
      : super(name, age, address);

  double calculateAverageScore() {
    return courseScores.isEmpty
        ? 0.0
        : courseScores.reduce((a, b) => a + b) / courseScores.length;
  }

  void displayRole() {
    print("Role: Student");
  }

  void displayStudentInfo() {
    displayRole();
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
    print("Average Score: ${calculateAverageScore().toStringAsFixed(1)}");
  }
}


class Teacher extends Person {
  String teacherID;
  List<String> coursesTaught;

  Teacher(String name, int age, String address, this.teacherID, this.coursesTaught)
      : super(name, age, address);


  void displayRole() {
    print("Role: Teacher");
  }

  void displayTeacherInfo() {
    displayRole();
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
    print("Courses Taught:");
    for (var course in coursesTaught) {
      print("- $course");
    }
  }
}

void main() {
//Student instance
  var student = Student(
    "John Doe",
    20,
    "123 Main St",
    "S123",
    "A",
    [90, 85, 82],
  );

  //Teacher instance
  var teacher = Teacher(
    "Mrs. Smith",
    35,
    "456 Oak St",
    "T456",
    ["Math", "English", "Bangla"],
  );

  print("Student Information:");
  student.displayStudentInfo();

  print("\nTeacher Information:");
  teacher.displayTeacherInfo();
}