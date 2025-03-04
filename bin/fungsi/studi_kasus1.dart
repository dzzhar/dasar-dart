double calculateAverage(List<int> scores) {
  int total = scores.reduce((a, b) => a + b);
  return total / scores.length;
}

void printResults(List<String> students, List<int> scores) {
  for (var i = 0; i < students.length; i++) {
    print('${students[i]}: ${scores[i]}');
  }
}

void main() {
  List<String> students = ['Ali', 'Budi', 'Citra'];
  List<int> scores = [75, 80, 60];

  printResults(students, scores);

  double average = calculateAverage(scores);
  print('Rata-rata kelas: $average');

  print(average >= 70 ? 'Kelas Lulus' : "Kelas Tidak Lulus");
}
