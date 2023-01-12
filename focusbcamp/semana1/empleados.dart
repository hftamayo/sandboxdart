class Empresa {
  Empresa(this.nombreEmpleado, this.salarioEmpleado);
  final String nombreEmpleado; //no-nullable
  final double salarioEmpleado; //no-nullable

  factory Empresa.fromJson(Map<String, double> empleados) {
    final nombre = empleados['nombre'] as String;
    final salario = empleados['salario'] as double;
    Empresa(nombre, salario);
  }

  double promedioSalarial() {
    double promedio = 0;

    return promedio;
  }
}

void main() {
  final Empresa dunderMifflin =
      Empresa(empleados: {"Michael": 2, "Jim": 4, "Pam": 6});
  final double promedioSalarial = dunderMifflin.promedioSalarial();
  print(promedioSalarial);
}
