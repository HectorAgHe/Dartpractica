import 'package:clases_abstractas/clases_abstractas.dart' as clases_abstractas;

void main(List<String> arguments) {
  final unCuadrado = Cuadrado();
  print('El area de un cuadrado es: ${unCuadrado.area}');
}

abstract class FiguraGeometrica {
  double? area;
  double calcularArea();
}

class Cuadrado implements FiguraGeometrica {
  //Cuadrado hereda de FiguraGeometrica
  // y debe implementar todo lo definido en la clase abstracta

  @override
  double? area;

  @override
  double calcularArea() {
    double lado = 12.5;
    return lado * lado;
  }
}
