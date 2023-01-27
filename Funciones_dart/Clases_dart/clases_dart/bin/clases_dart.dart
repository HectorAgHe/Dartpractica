// import 'dart:html';
import 'dart:io';
import 'dart:typed_data';

import 'package:clases_dart/clases_dart.dart' as clases_dart;

void main(List<String> arguments) {
  var unaLaptop = Computadora('Allienware', 'Intel core i9', 32);
  print('Información de la Laptop que te venden en internet: $unaLaptop');

  stdout.write('¿Esta computadora es adecuada para la materia DMM?: ');

  String? respuesta = stdin.readLineSync();
  if (respuesta != null) {
    if (respuesta.contains('si')) {
      unaLaptop.configurarAdecuada = true;
    } else {
      unaLaptop.configurarAdecuada = false;
    }
  } else {
    print('No se puede saber si la PC es adecuada porque se recibio null');
  }
  print('laptop1 es adecuada para tu materia: ${unaLaptop.esAdecuada}');

  unaLaptop.marca = 'Lenovo';
  unaLaptop.cpu = 'Celeron';
  unaLaptop.ram = 4;

  print('Información de unaLaptop que te llego a casa: $unaLaptop');
}

class Computadora {
  // Campos
  String? marca;
  String? cpu;
  int? ram;
  bool adecuada = false;

  /* Constructor
  Computadora(String m, String c, int r) {
    this.marca = m;
    this.cpu = c;
    this.ram = r;
  }
  */
  // Otra forma de escribir el constructor
  Computadora(this.marca, this.cpu, this.ram);

  @override
  String toString() {
    return 'Marca: $marca, CPU: $cpu, RAM: $ram, es adecuada para DMM $adecuada ';
  }

  // getter de la variable adecuada

  bool get esAdecuada {
    return adecuada;
  }

  set configurarAdecuada(bool valor) {
    adecuada = valor;
  }
}
