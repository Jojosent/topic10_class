// Task 1
// void main() {
//   student(
//     name: 'John Doe',
//     age: 17,
//     school: 'JIHC',
//   );
// }

// void student({
//   required String name,
//   required int age,
//   required String school,
// }) {
//   print('Student Information:');
//   print('Name: $name');
//   print('Age: $age');
//   print('School: $school');
// }

// Task 2
// void main() {
//   student_data(student_id: 12345);

//   student_data(student_name: 'John Doe', student_class: 'Class A');
// }

// void student_data(
//     {int? student_id, String? student_name, String? student_class}) {
//   if (student_id != null) {
//     print('Student ID: $student_id');
//   }

//   if (student_name != null && student_class != null) {
//     print('Student Name: $student_name');
//     print('Student Class: $student_class');
//   }
// }

// Task 3
// void main() {
//   var studentMarks = Marks(90, 85, 78);

//   var student1 = Student('John Doe', 18, studentMarks);

//   print('Student Information:');
//   print(student1);
// }

// class Marks {
//   int math;
//   int science;
//   int history;

//   Marks(this.math, this.science, this.history);

//   @override
//   String toString() {
//     return 'Math: $math, Science: $science, History: $history';
//   }
// }

// class Student {
//   String name;
//   int age;
//   Marks marks;

//   Student(this.name, this.age, this.marks);

//   @override
//   String toString() {
//     return 'Name: $name, Age: $age\nMarks: $marks';
//   }
// }

// Task 4
// void main() {
//   var student1 = Student('John Doe', 18);
//   var student2 = Student('John Doe Anderson', 20);

//   print('Student Information:');
//   print(student1);
//   print(student2);
// }

// class Student {
//   String s;
//   dynamic t;
//   Student(this.s, this.t);
//   @override
//   String toString() {
//     return "Name is $s and Mark is $t";
//   }
// }

// Task 5

// void main() {
//   var t = Student(123, 'Jomart', 18, 87979797, 'JIHc');
//   print(t);
// }

// class Student {
//   int student_id;
//   String student_name;
//   int student_age;
//   int phone_number;
//   String univercity;

//   Student(
//     this.student_id,
//     this.student_name,
//     this.student_age,
//     this.phone_number,
//     this.univercity,
//   );

//   @override
//   String toString() {
//     return "Id: $student_id \nName: $student_name \nAge: $student_age \nNumber: $phone_number \nUniversity: $univercity ";
//   }
// }

// Task 6
// void main() {
//   List<Student> students = [
//     Student(1, 'John Doe', 20, '555-1234', 'XYZ University'),
//     Student(2, 'Jane Smith', 22, '555-5678', 'ABC College'),
//     Student(3, 'Alice Johnson', 21, '555-4321', 'DEF Institute'),
//     Student(4, 'Bob Williams', 23, '555-8765', 'GHI School'),
//   ];

//   for (var i in students) {
//     print('Student ID: ${i.studentId}');
//     print('Student Name: ${i.studentName}');
//     print('Student Age: ${i.studentAge}');
//     print('Phone Number: ${i.phoneNumber}');
//     print('University: ${i.university}');
//     print('---------------------------------');
//   }
// }

// class Student {
//   int studentId;
//   String studentName;
//   int studentAge;
//   String phoneNumber;
//   String university;

//   Student(this.studentId, this.studentName, this.studentAge, this.phoneNumber,
//       this.university);
// }

// Task 7
// void main() {
//   var employee1 = Employee("E7876", "ADAMS", 50000, "ACCOUNTING");
//   var employee2 = Employee("E7499", "JONES", 45000, "RESEARCH");
//   var employee3 = Employee("E7900", "MARTIN", 50000, "SALES");
//   var employee4 = Employee("E7698", "SMITH", 55000, "OPERATIONS");

//   employee1.calculateEmpSalary(45); // No overtime
//   employee2.calculateEmpSalary(55); // Overtime
//   employee3.calculateEmpSalary(50); // No overtime
//   employee4.calculateEmpSalary(60); // Overtime

//   employee1.printEmployeeDetails();
//   print('--------------------');
//   employee2.printEmployeeDetails();
//   print('--------------------');
//   employee3.printEmployeeDetails();
//   print('--------------------');
//   employee4.printEmployeeDetails();
// }

// class Employee {
//   String empId;
//   String empName;
//   double empSalary;
//   String empDepartment;

//   Employee(this.empId, this.empName, this.empSalary, this.empDepartment);

//   void calculateEmpSalary(double hoursWorked) {
//     if (hoursWorked > 50) {
//       double overtime = hoursWorked - 50;
//       double overtimeAmount = (overtime * (empSalary / 50));
//       empSalary += overtimeAmount;
//     }
//   }

//   void empAssignDepartment(String newDepartment) {
//     empDepartment = newDepartment;
//   }

//   void printEmployeeDetails() {
//     print('Employee ID: $empId');
//     print('Employee Name: $empName');
//     print('Employee Salary: \$${empSalary.toStringAsFixed(2)}');
//     print('Employee Department: $empDepartment');
//   }
// }

// Task 8
// void main() {
//   var restaurant = Restaurant();

//   restaurant.addItemToMenu('Burger', 9.99);
//   restaurant.addItemToMenu('Pizza', 12.99);
//   restaurant.addItemToMenu('Pasta', 8.49);

//   restaurant.bookTable(1);
//   restaurant.bookTable(3);

//   restaurant.customerOrder({'Burger': 2, 'Pizza': 1});
//   restaurant.customerOrder({'Pasta': 3});

//   restaurant.printMenu();
//   print('--------------------');
//   restaurant.printTableReservations();
//   print('--------------------');
//   restaurant.printCustomerOrders();
// }

// class Restaurant {
//   Map<String, double> menuItems =
//       {};
//   List<int> bookedTables =
//       [];
//   List<Map<String, int>> customerOrders =
//       [];

//   void addItemToMenu(String itemName, double price) {
//     menuItems[itemName] = price;
//   }

//   void bookTable(int tableNumber) {
//     bookedTables.add(tableNumber);
//   }

//   void customerOrder(Map<String, int> order) {
//     customerOrders.add(order);
//   }

//   void printMenu() {
//     print('Menu:');
//     menuItems.forEach((itemName, price) {
//       print('$itemName: \$${price.toStringAsFixed(2)}');
//     });
//   }

//   void printTableReservations() {
//     print('Table Reservations:');
//     bookedTables.forEach((tableNumber) {
//       print('Table $tableNumber');
//     });
//   }

//   void printCustomerOrders() {
//     print('Customer Orders:');
//     for (int i = 0; i < customerOrders.length; i++) {
//       print('Order ${i + 1}:');
//       customerOrders[i].forEach((itemName, quantity) {
//         print('$itemName x$quantity');
//       });
//     }
//   }
// }

// Task 9
// void main() {
//   var account = BankAccount('1234567890', 1000.0, DateTime.now(), 'John Doe');

//   account.checkBalance();
//   account.deposit(500.0);
//   account.checkBalance();
//   account.withdraw(200.0);
//   account.checkBalance();
// }

// class BankAccount {
//   String accountNumber;
//   double balance;
//   DateTime dateOfOpening;
//   String customerName;

//   BankAccount(
//       this.accountNumber, this.balance, this.dateOfOpening, this.customerName);

//   void deposit(double amount) {
//     if (amount > 0) {
//       balance += amount;
//       print('Deposited: \$${amount.toStringAsFixed(2)}');
//     } else {
//       print('Invalid deposit amount.');
//     }
//   }

//   void withdraw(double amount) {
//     if (amount > 0 && amount <= balance) {
//       balance -= amount;
//       print('Withdrawn: \$${amount.toStringAsFixed(2)}');
//     } else {
//       print('Insufficient funds or invalid withdrawal amount.');
//     }
//   }

//   void checkBalance() {
//     print('Account Number: $accountNumber');
//     print('Customer Name: $customerName');
//     print('Balance: \$${balance.toStringAsFixed(2)}');
//   }
// }

// Task 10
// void main() {
//   var inventory = Inventory();

//   inventory.addItem('001', 'Widget', 100, 5.99);
//   inventory.addItem('002', 'Gadget', 50, 12.49);

//   inventory.updateItem('001', 'Super Widget', 150, 7.99);

//   inventory.checkItemDetails('001');
//   inventory.checkItemDetails('002');
//   inventory.checkItemDetails('003'); 
// }
// class Inventory {
//   Map<String, Map<String, dynamic>> items = {};

//   void addItem(String itemId, String itemName, int stockCount, double price) {
//     if (!items.containsKey(itemId)) {
//       items[itemId] = {
//         'item_name': itemName,
//         'stock_count': stockCount,
//         'price': price,
//       };
//       print('Item added to inventory: $itemName');
//     } else {
//       print('Item with ID $itemId already exists in inventory.');
//     }
//   }

//   void updateItem(String itemId, String itemName, int stockCount, double price) {
//     if (items.containsKey(itemId)) {
//       items[itemId] = {
//         'item_name': itemName,
//         'stock_count': stockCount,
//         'price': price,
//       };
//       print('Item details updated: $itemName');
//     } else {
//       print('Item with ID $itemId does not exist in inventory.');
//     }
//   }

//   void checkItemDetails(String itemId) {
//     if (items.containsKey(itemId)) {
//       final item = items[itemId];
//       print('Item ID: $itemId');
//       print('Item Name: ${item['item_name']}');
//       print('Stock Count: ${item['stock_count']}');
//       print('Price: \$${item['price'].toStringAsFixed(2)}');
//     } else {
//       print('Item with ID $itemId does not exist in inventory.');
//     }
//   }
// }