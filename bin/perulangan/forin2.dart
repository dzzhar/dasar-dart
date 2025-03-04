void main() {
  List<int> scores = [80, 90, 85, 70, 95];
  int total = 0;

  /**
 * for in perulangan yang membutuhkan variable pengganti
 * biasanya digunakan untuk list, map, dan set
 */
  for (var score in scores) {
    total += score;
  }

  double average = total / scores.length;
  print('Rata-rata Nilai: $average\n');

  for (var score in scores) {
    if (score >= 75) {
      print('Nilai $score: Lulus');
    } else {
      print('Nilai $score: Tidak Lulus');
    }
  }
}
