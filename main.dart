// Defining an interface
abstract class Printable {
  void printInfo();
}

// Creating a base class using inheritance
class Book {
  String title;
  String author;

  Book(this.title, this.author);

  void displayBookInfo() {
    print('Title: $title, Author: $author');
  }
}

// Implement the Printable interface in a class
class BookInfo extends Book implements Printable {
  BookInfo(String title, String author) : super(title, author);

  @override
  void printInfo() {
    print('Printing book info - Title: $title, Author: $author');
  }
}

// Creating an instance of a Book class initialized with data from a file
class BookFromFile extends Book {
  BookFromFile(String filePath) : super('', '') {
    // Reading data from the file and initialize the class
    String fileData = 'Dart Programming,John Doe'; // Example data for testing
    List<String> data = fileData.split(',');
    title = data[0];
    author = data[1];
  }
}

void main() {
  // Demonstrating the use of a for loop
  for (int i = 1; i <= 5; i++) {
    print('Iteration: $i');
  }

  // Create and demonstrate instances of the classes
  BookInfo book = BookInfo('Dart Programming', 'John Doe');
  book.displayBookInfo();
  book.printInfo();

  BookFromFile fileBook = BookFromFile('book_data.txt');
  fileBook.displayBookInfo();
}
