class Company {
  final String empName; //no-nullable
  final double empSalary; //no-nullable

  Company(this.empName, this.empSalary);
  Company.fromJson(Map<String, dynamic> employees)
      : empName = employees["name"],
        empSalary = employees["salary"];

  double averageSalary() {
    double averageSal = employees.map((e) => e['salary']!).average;
    return averageSal;
  }
}

void main() {
  final Company myCompany =
      Company(employees: {"Michael": 2, "Jim": 4, "Pam": 6});
  final double averageSalary = myCompany.averageSalary();
  print(averageSalary);
}
