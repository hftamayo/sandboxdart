class Empresa {
  final String nombreEmpleado; //no-nullable
  final double salarioEmpleado; //no-nullable

  Empresa(this.nombreEmpleado, this.salarioEmpleado);
  Empresa.fromJson(Map<String, dynamic> empleados)
      : nombreEmpleado = empleados["nombre"],
        salarioEmpleado = empleados["salario"];

  double promedioSalarial() {
    double promedio = empleados.map((e) => e['salario']!).average;
    return promedio;
  }
}

void main() {
  final Empresa dunderMifflin =
      Empresa(empleados: {"Michael": 2, "Jim": 4, "Pam": 6});
  final double promedioSalarial = dunderMifflin.promedioSalarial();
  print(promedioSalarial);
}
