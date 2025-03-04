import 'library.dart';
import 'book.dart';
import 'member.dart';

void main() {
  Library myLibrary = Library();

  Book book1 = Book('Dart Programming', 'John Doe');
  Book book2 = Book('Flutter For Beginners', 'Jane Smith');

  Member member1 = Member('Ali', 129310239);

  myLibrary.addBook(book1);
  myLibrary.addBook(book2);
  myLibrary.addMember(member1);

  myLibrary.displayBooks();
  myLibrary.displayMembers();
}
