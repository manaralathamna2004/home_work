class Book {
  String title, author, isbn;
  bool isAvailable;

  Book(this.title, this.author, this.isbn, {this.isAvailable = true});
}

class Library {
  List<Book> books = [];

  void addBook(Book book) => books.add(book);

  bool borrowBook(String isbn) {
    var book = books.firstWhere(
      (b) => b.isbn == isbn && b.isAvailable,
      orElse: () => Book('', '', '', isAvailable: false),
    );
    if (book.isAvailable) {
      book.isAvailable = false;
      return true;
    }
    return false;
  }

  bool returnBook(String isbn) {
    var book = books.firstWhere(
      (b) => b.isbn == isbn && !b.isAvailable,
      orElse: () => Book('', '', '', isAvailable: true),
    );
    if (!book.isAvailable) {
      book.isAvailable = true;
      return true;
    }
    return false;
  }

  List<Book> searchByTitle(String title) =>
      books.where((b) => b.title.toLowerCase().contains(title.toLowerCase())).toList();
}

void main() {
  var lib = Library();
  lib.addBook(Book('Dart Guide', 'Alice', '001'));
  lib.addBook(Book('Flutter Tips', 'Bob', '002'));

  lib.borrowBook('001');
  lib.returnBook('001');
  lib.searchByTitle('dart').forEach((b) => print(b.title));
}