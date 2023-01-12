class Company {
  final Map<String, double> employees;

  Company({this.employees = const {}});

  double averageSalary() {
    double avgSal = 0;
    List<double> salaries = employees.values.toList();

    for (double salary in salaries) {
      avgSal += salary;
    }
    avgSal = avgSal / employees.length;

    return avgSal;
  }

  void viewEmployees() {
    employees.forEach((k, v) => print('Name : ${k}, Salary: ${v}'));
  }
}

void main() {
  final Company myCompany =
      Company(employees: {"Michael": 2.5, "Jim": 4.75, "Pam": 6.80});

  final double averageSalary = myCompany.averageSalary();
  print(averageSalary);
  myCompany.viewEmployees();
}
