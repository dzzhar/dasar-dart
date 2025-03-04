void main() {
  String studentName = 'Andi';
  int studentAge = 16;
  double examScore = 85.75;
  bool isPassed = examScore >= 75;
  var subject = ['Math', 'Pyshic', 'English'];
  const double passingGrade = 75.0;
  final Set<String> uniqueSubjects = {'Math', 'Pyshic', 'English'};

  double averageScore = (examScore + 90.0 + 78.5) / 3;

  print('Nama Siswa: $studentName');
  print('Umur: $studentAge');
  print('Nilai Ujian: $examScore');
  print('Status ${isPassed ? 'Success' : 'Failed'}');
  print('Subject $subject');
  print('Score Average: $averageScore');
  print("Unique Subject: $uniqueSubjects");
  print("Passing Grade: $passingGrade");
}
