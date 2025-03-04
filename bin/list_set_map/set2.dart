void main() {
  var setBuah = <String>{};

  setBuah.add("Mangga");
  setBuah.add("Jeruk");
  setBuah.add("Apel");

  print("Set Buah: $setBuah");

  var setSayur = {"Bayam", "Wortel", "Kangkung"};
  print("Set sayur: $setSayur");

  var setMakanan = {...setBuah, ...setSayur};
  print("Gabungan set: $setMakanan");

  var setLain = {"Apel", "Jeruk", "Anggur"};
  var unionSet = setBuah.union(setLain);
  print("Union (Buah + Lain): $unionSet");
}
