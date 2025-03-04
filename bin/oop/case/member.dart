class Member {
  String name;
  int memberId;

  Member(this.name, this.memberId);

  void showMemberInfo() {
    print('Anggota: $name, ID: $memberId');
  }
}
