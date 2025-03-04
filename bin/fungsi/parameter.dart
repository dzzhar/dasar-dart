// param: wajib, [optional]
void greet(String name, [String title = 'Tanpa Gelar']) {
  print('Hallo, $name!');

  if (title != null) {
    print('Gelar: $title');
  }
}

void main() {
  // inputan value ke parameter
  greet('Indra');
  greet('Indra', 'S.E');
}
