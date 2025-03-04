import 'book.dart';
import 'member.dart';

class Library {
  List<Book> books = [];
  List<Member> members = [];

  void addBook(Book book) {
    books.add(book);
  }

  void addMember(Member member) {
    members.add(member);
  }

  void displayBooks() {
    for (var book in books) {
      book.display();
    }
  }

  void displayMembers() {
    for (var member in members) {
      member.showMemberInfo();
    }
  }
}
