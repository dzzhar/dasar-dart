void main() {
  // list object
  Set<String> fruits = {"Apple", "Orange", "Mango", "Banana"};
  Set<String> fruits2 = {"Apple", "Grape", "Coconut"};

  print("Mengambil nilai pertama: ${fruits.first}");
  print("Mengambil nilai terakhir: ${fruits.last}");
  print("Apakah data fruits kosong? ${fruits.isEmpty}");
  print("Apakah data fruit ada? ${fruits.isNotEmpty}");
  print("Berapa panjang data dari fruits? ${fruits.length}");

  print(fruits.contains("Mango"));
  print(fruits.contains("Apple"));

  fruits.add("Lemon");
  print("Menambahkan buah Lemon $fruits");
  fruits.remove("Apple");
  print("Menghapus buah Apple $fruits");

  final differenceSet = fruits.difference(fruits2);
  print(differenceSet);
  print(fruits.elementAt(2));

  final intersectionSet = fruits.intersection(fruits2);
  print(intersectionSet);

  fruits.clear();
  print(fruits);
}
