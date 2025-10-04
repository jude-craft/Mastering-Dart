// ============================================================================
// DART FUNDAMENTALS FOR FLUTTER BEGINNERS
// A comprehensive guide covering essential Dart concepts before learning Flutter
// ============================================================================

void main() {
  print('=== DART FUNDAMENTALS FOR FLUTTER ===\n');
  
  // Run all examples
  variablesAndDataTypes();
  stringOperations();
  collectionsDemo();
  functionsDemo();
  controlFlowDemo();
  objectOrientedProgramming();
  nullSafetyDemo();
  asyncProgrammingDemo();
  errorHandlingDemo();
  extensionsAndMixinsDemo();
}

// ============================================================================
// 1. VARIABLES AND DATA TYPES
// ============================================================================

void variablesAndDataTypes() {
  print('\n--- 1. VARIABLES AND DATA TYPES ---');
  
  // Variable declaration with type inference
  var name = 'John Doe';  // Type inferred as String
  var age = 25;           // Type inferred as int
  
  // Explicit type declaration
  String city = 'Nairobi';
  int population = 4500000;
  double temperature = 23.5;
  bool isCapital = true;
  
  // Dynamic type (avoid when possible)
  dynamic flexibleVar = 'I can be anything';
  flexibleVar = 42;  // Can change type
  
  // Final and const (immutable variables)
  final currentYear = 2025;  // Runtime constant
  const pi = 3.14159;        // Compile-time constant
  
  // final vs const:
  // - final: Value set at runtime, can't be changed after
  // - const: Value set at compile-time, deeply immutable
  
  print('Name: $name, Age: $age');
  print('City: $city, Population: $population');
  print('Temperature: $temperature°C, Is Capital: $isCapital');
  print('Pi: $pi, Current Year: $currentYear');
}

// ============================================================================
// 2. STRING OPERATIONS
// ============================================================================

void stringOperations() {
  print('\n--- 2. STRING OPERATIONS ---');
  
  // String interpolation
  var firstName = 'Jane';
  var lastName = 'Smith';
  print('Full name: $firstName $lastName');
  print('Name length: ${firstName.length + lastName.length}');
  
  // Multi-line strings
  var multiLine = '''
  This is a
  multi-line
  string
  ''';
  print(multiLine);
  
  // String methods
  var text = 'Hello, Dart!';
  print('Uppercase: ${text.toUpperCase()}');
  print('Contains "Dart": ${text.contains("Dart")}');
  print('Replace: ${text.replaceAll("Dart", "Flutter")}');
  print('Split: ${text.split(", ")}');
  print('Substring: ${text.substring(0, 5)}');
  
  // Raw strings (ignore escape sequences)
  var path = r'C:\Users\Documents\file.txt';
  print('Path: $path');
}

// ============================================================================
// 3. COLLECTIONS (List, Set, Map)
// ============================================================================

void collectionsDemo() {
  print('\n--- 3. COLLECTIONS ---');
  
  // LISTS (ordered, allows duplicates)
  List<String> fruits = ['Apple', 'Banana', 'Orange'];
  var numbers = [1, 2, 3, 4, 5];  // Type inferred
  
  // List operations
  fruits.add('Mango');
  fruits.insert(0, 'Grape');
  print('Fruits: $fruits');
  print('First fruit: ${fruits.first}');
  print('Last fruit: ${fruits.last}');
  print('Length: ${fruits.length}');
  
  // List methods
  print('Contains Banana: ${fruits.contains("Banana")}');
  print('Index of Orange: ${fruits.indexOf("Orange")}');
  
  // Spread operator
  var moreFruits = ['Pineapple', 'Watermelon'];
  var allFruits = [...fruits, ...moreFruits];
  print('All fruits: $allFruits');
  
  // SETS (unordered, no duplicates)
  Set<int> uniqueNumbers = {1, 2, 3, 3, 4, 5};  // Duplicates removed
  print('\nUnique numbers: $uniqueNumbers');
  
  uniqueNumbers.add(6);
  uniqueNumbers.remove(1);
  print('After modifications: $uniqueNumbers');
  
  // MAPS (key-value pairs)
  Map<String, int> scores = {
    'Alice': 95,
    'Bob': 87,
    'Charlie': 92,
  };
  
  print('\nScores: $scores');
  print('Alice\'s score: ${scores['Alice']}');
  
  scores['David'] = 88;  // Add new entry
  scores['Bob'] = 90;    // Update existing
  print('Updated scores: $scores');
  
  // Iterating collections
  print('\nIterating fruits:');
  for (var fruit in fruits) {
    print('- $fruit');
  }
  
  print('\nIterating scores:');
  scores.forEach((name, score) {
    print('$name: $score');
  });
}

// ============================================================================
// 4. FUNCTIONS
// ============================================================================

void functionsDemo() {
  print('\n--- 4. FUNCTIONS ---');
  
  // Basic function
  String greet(String name) {
    return 'Hello, $name!';
  }
  print(greet('Alice'));
  
  // Arrow function (for single expressions)
  int square(int x) => x * x;
  print('Square of 5: ${square(5)}');
  
  // Optional positional parameters
  String introduce(String name, [int? age]) {
    if (age != null) {
      return 'I am $name, $age years old';
    }
    return 'I am $name';
  }
  print(introduce('Bob'));
  print(introduce('Bob', 30));
  
  // Named parameters
  void printUserInfo({required String name, int age = 0, String? city}) {
    print('Name: $name, Age: $age, City: ${city ?? "Unknown"}');
  }
  printUserInfo(name: 'Charlie', age: 25, city: 'Nairobi');
  printUserInfo(name: 'Diana');
  
  // Function as parameter
  void executeOperation(int a, int b, int Function(int, int) operation) {
    print('Result: ${operation(a, b)}');
  }
  executeOperation(10, 5, (a, b) => a + b);  // Addition
  executeOperation(10, 5, (a, b) => a * b);  // Multiplication
  
  // Anonymous functions
  var multiply = (int a, int b) => a * b;
  print('Multiply 4 * 6: ${multiply(4, 6)}');
}

// ============================================================================
// 5. CONTROL FLOW
// ============================================================================

void controlFlowDemo() {
  print('\n--- 5. CONTROL FLOW ---');
  
  // If-else statements
  int score = 85;
  if (score >= 90) {
    print('Grade: A');
  } else if (score >= 80) {
    print('Grade: B');
  } else if (score >= 70) {
    print('Grade: C');
  } else {
    print('Grade: F');
  }
  
  // Ternary operator
  var status = score >= 50 ? 'Pass' : 'Fail';
  print('Status: $status');
  
  // Switch statement
  var day = 'Monday';
  switch (day) {
    case 'Monday':
    case 'Tuesday':
    case 'Wednesday':
    case 'Thursday':
    case 'Friday':
      print('Weekday');
      break;
    case 'Saturday':
    case 'Sunday':
      print('Weekend');
      break;
    default:
      print('Invalid day');
  }
  
  // For loop
  print('\nCounting 1 to 5:');
  for (var i = 1; i <= 5; i++) {
    print(i);
  }
  
  // For-in loop
  var colors = ['Red', 'Green', 'Blue'];
  print('\nColors:');
  for (var color in colors) {
    print('- $color');
  }
  
  // While loop
  print('\nCountdown:');
  var count = 3;
  while (count > 0) {
    print(count);
    count--;
  }
  
  // Do-while loop
  var x = 0;
  do {
    print('x = $x');
    x++;
  } while (x < 3);
}

// ============================================================================
// 6. OBJECT-ORIENTED PROGRAMMING
// ============================================================================

void objectOrientedProgramming() {
  print('\n--- 6. OBJECT-ORIENTED PROGRAMMING ---');
  
  // Create instances
  var person = Person('John', 30);
  print(person);
  person.celebrateBirthday();
  
  var student = Student('Alice', 20, 'S12345');
  print(student);
  student.study();
  
  // Using abstract class through implementation
  var dog = Dog('Buddy');
  dog.makeSound();
  dog.eat();
  
  // Getters and setters
  var rect = Rectangle(5, 3);
  print('Rectangle area: ${rect.area}');
  rect.width = 10;
  print('New area: ${rect.area}');
}

// Basic class
class Person {
  String name;
  int age;
  
  // Constructor
  Person(this.name, this.age);
  
  // Named constructor
  Person.guest() : name = 'Guest', age = 0;
  
  // Method
  void celebrateBirthday() {
    age++;
    print('$name is now $age years old!');
  }
  
  @override
  String toString() => 'Person(name: $name, age: $age)';
}

// Inheritance
class Student extends Person {
  String studentId;
  
  Student(String name, int age, this.studentId) : super(name, age);
  
  void study() {
    print('$name is studying...');
  }
  
  @override
  String toString() => 'Student(name: $name, age: $age, id: $studentId)';
}

// Abstract class (cannot be instantiated)
abstract class Animal {
  String name;
  
  Animal(this.name);
  
  // Abstract method (must be implemented by subclasses)
  void makeSound();
  
  // Concrete method
  void eat() {
    print('$name is eating...');
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);
  
  @override
  void makeSound() {
    print('$name says: Woof! Woof!');
  }
}

// Class with getters and setters
class Rectangle {
  double _width;   // Private property (underscore)
  double _height;
  
  Rectangle(this._width, this._height);
  
  // Getter
  double get area => _width * _height;
  
  // Getter
  double get width => _width;
  
  // Setter
  set width(double value) {
    if (value > 0) {
      _width = value;
    }
  }
  
  double get height => _height;
  
  set height(double value) {
    if (value > 0) {
      _height = value;
    }
  }
}

// ============================================================================
// 7. NULL SAFETY
// ============================================================================

void nullSafetyDemo() {
  print('\n--- 7. NULL SAFETY ---');
  
  // Non-nullable by default
  String name = 'John';  // Cannot be null
  // name = null;  // Error!
  
  // Nullable type (with ?)
  String? nullableName;  // Can be null
  nullableName = 'Jane';
  nullableName = null;   // OK
  
  // Null-aware operators
  String? user;
  
  // ?? (null-coalescing operator)
  print('User: ${user ?? "Guest"}');  // Prints "Guest"
  
  // ?. (null-aware access)
  print('Length: ${user?.length}');  // Returns null instead of error
  
  // ! (null assertion operator - use carefully!)
  String? definitelyHasValue = 'Hello';
  print('Uppercase: ${definitelyHasValue!.toUpperCase()}');
  
  // ??= (null-aware assignment)
  String? greeting;
  greeting ??= 'Hello';  // Assigns only if null
  print('Greeting: $greeting');
  
  // Late initialization (for non-nullable variables initialized later)
  late String description;
  description = 'This is initialized later';
  print('Description: $description');
}

// ============================================================================
// 8. ASYNC PROGRAMMING (Future and async/await)
// ============================================================================

void asyncProgrammingDemo() {
  print('\n--- 8. ASYNC PROGRAMMING ---');
  
  // Note: In a real Flutter app, you'd use async/await properly
  // Here we're demonstrating the syntax
  
  print('Fetching data...');
  fetchUserData().then((data) {
    print('Received: $data');
  });
  
  print('This prints before data is received (async!)');
  
  // Using async/await (cleaner syntax)
  processData();
}

// Future: represents a value that will be available later
Future<String> fetchUserData() async {
  // Simulate network delay
  await Future.delayed(Duration(seconds: 1));
  return 'User data from server';
}

Future<void> processData() async {
  print('\nProcessing with async/await...');
  try {
    var data = await fetchUserData();
    print('Processed: $data');
  } catch (e) {
    print('Error: $e');
  }
}

// ============================================================================
// 9. ERROR HANDLING
// ============================================================================

void errorHandlingDemo() {
  print('\n--- 9. ERROR HANDLING ---');
  
  // Try-catch
  try {
    var result = divide(10, 0);
    print('Result: $result');
  } catch (e) {
    print('Error caught: $e');
  } finally {
    print('Finally block always executes');
  }
  
  // Catching specific exceptions
  try {
    var number = int.parse('abc');
    print(number);
  } on FormatException catch (e) {
    print('Format error: ${e.message}');
  } catch (e) {
    print('Unknown error: $e');
  }
}

double divide(int a, int b) {
  if (b == 0) {
    throw Exception('Cannot divide by zero!');
  }
  return a / b;
}

// ============================================================================
// 10. EXTENSIONS AND MIXINS
// ============================================================================

void extensionsAndMixinsDemo() {
  print('\n--- 10. EXTENSIONS AND MIXINS ---');
  
  // Using extension methods
  print('Is 7 even? ${7.isEven}');
  print('Is 8 even? ${8.isEven}');
  print('Capitalize: ${"hello world".capitalize()}');
  
  // Using mixins
  var musician = Musician();
  musician.perform();
  musician.practice();
}

// Extension: Add methods to existing types
extension IntExtension on int {
  bool get isEven => this % 2 == 0;
}

extension StringExtension on String {
  String capitalize() {
    if (isEmpty) return this;
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}

// Mixin: Share behavior across classes without inheritance
mixin Performer {
  void perform() {
    print('Performing...');
  }
}

mixin Practitioner {
  void practice() {
    print('Practicing...');
  }
}

class Musician with Performer, Practitioner {
  // Gets methods from both mixins
}

// ============================================================================
// BONUS: USEFUL PATTERNS FOR FLUTTER
// ============================================================================

// Enums
enum Status { idle, loading, success, error }

// Factory constructor
class Logger {
  static final Logger _instance = Logger._internal();
  
  factory Logger() {
    return _instance;
  }
  
  Logger._internal();
  
  void log(String message) {
    print('[LOG] $message');
  }
}

/* 
============================================================================
KEY TAKEAWAYS FOR FLUTTER DEVELOPMENT:
============================================================================

1. VARIABLES: Use 'final' for most variables, 'const' for compile-time constants
2. NULL SAFETY: Embrace it! Use ? for nullable, ?? for defaults
3. COLLECTIONS: Master List, Map, and Set - heavily used in Flutter
4. FUNCTIONS: Named parameters are common in Flutter widgets
5. ASYNC: Essential for API calls, database operations, and animations
6. OOP: Flutter widgets are classes - understand inheritance and composition
7. IMMUTABILITY: Prefer immutable objects (final fields) for better performance

NEXT STEPS:
- Practice these concepts in DartPad (dartpad.dev)
- Build small CLI apps to reinforce learning
- Start Flutter with a solid Dart foundation
- Explore Flutter-specific patterns (StatefulWidget, StatelessWidget)

Good luck with your Flutter journey! 🚀
============================================================================
*/