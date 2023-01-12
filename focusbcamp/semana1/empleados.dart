class Company {
  final Map employees;
  
  Company({this.employees = const {}})
   
  
   void viewEmployees() {
    this.employees.forEach((k, v) => print('Name : ${k}, Salary: ${v}'));
  }
  
}


void main() {
  final Company myCompany = Company(employees: {
    "Michael": 2.5,
    "Jim": 4.75,
    "Pam": 6.80
  });
  myCompany.viewEmployees();
}