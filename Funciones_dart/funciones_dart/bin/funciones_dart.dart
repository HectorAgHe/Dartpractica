import 'dart:io';

void main(List<String> arguments) {
  dividir();
  // bool r = esPar();
  print(
      '¿El numero es par? : ${esPar()}'); /* Tambien se puede llamar directamente al metodo
                               77               o imprimir con la variable */
  saludo1('Sinforosa');
  String nombre = 'Tiburcio';
  saludo1(nombre);
  saludo2('Pancrasio', 1953);
  saludo3('Filomena', null);
  String? nombre2;
  int? year2;
  saludo3(nombre2, year2);
  //saludo4(); // Se debe enviar al menos el argumento String
  //                  porque sigue siendo posicional y el primer parametro en orden es el string
  saludo4('Cupertino', 2040);

  //Llan¿mando a la funcion con parametros nombrados
  saludo5(); // Como son opcionales los parametros
  saludo5(name: 'Anacleto');
  saludo5(year: 1996, name: 'Anastasia');
  saludo5(year: year2);
  saludo6(name: 'Cleto', mensaje: 'Que onda');
  saludo6(mensaje: 'Que tal', name: 'Petronila');

  //Uso de funciones anónimas
  var alumnos = Map();
  alumnos[1] = 'Anacleto';
  alumnos[2] = 'Telesforo';
  alumnos[3] = 'Cupertino';
  alumnos[4] = 'Pantaleon';
  alumnos[5] = 'Panfilo';
  alumnos[6] = 'Tranquilino';

  //Imprimiendo el mapa con una funcion anonima
  alumnos.forEach((key, value) {
    // Se sustituyen tambien las llaves por : "=>" alumnos.forEach((key, value) => print('Clave: $key, Valor: $value'));
    print('Clave: $key, Valor: $value');
  });
}

bool esPar() {
  // Funcion que regresa un valor booleano
  var numero = 15;
  if (numero % 2 == 0) {
    return true;
  } else {
    return false;
  }
}

void saludo1(String name) {
  print('Hola $name');
}

void saludo2(String name, int year) {
  //Funcion con dos parametros distintos
  print('Saludo2 Hola $name, estas en el año $year');
}

void saludo3(String? name, int? year) {
  //Funcion con dos parametros posicionales
  // que podrian tener un valor nulo
  print('Saludo3 Hola $name, estas en el año $year');
}

void saludo4([String name = 'desconocido', int year = 2023]) {
  //Funcion con dos parametros opcionales
  // Se le pueden 0, 1 o 2 parametros
  print('Saludo4 Hola $name, estas en el año $year');
}

void saludo5({String name = 'Desconocido', int? year}) {
  /*Funcion con dos parametros nombrados, estos parametros son opcionales 
  y se pueden enviar en cualquier orden.
  Se requiere inicializar o permitir valores null*/

  print('Saludo5 $name, estas en el año$year');
}

void saludo6({required String name, required String mensaje}) {
  // Funcion con dos parametros nombrados pero requeridos
  print('Saludo6: $mensaje, $name');
}

void dividir() {
  //Funcion que no regresa valores
  int n1 = 12;
  int n2 = 5;
  int cociente;
  int residuo;
  double resultado;

  resultado = n1 / n2;
  print('Resultado de dividir $n1 entre $n2 es $resultado');

  cociente = n1 ~/ n2;
  print('Cociente de la division entre $n1 y $n2 es $resultado');

  residuo = n1 % n2;
  print('Residuo de la division entre $n1 y $n2 es $resultado');
}
