import 'package:actividad3herencias/animal.dart';

// Clase Peces que hereda de la clase Animal
class Peces extends Animal {
  late String tipoEscamas; // Tipo de escamas de los peces

  // Constructor de la clase Peces que inicializa sus atributos y llama al constructor de la clase Animal
  Peces(
    String nombre,              // Nombre del pez
    String tipoEscamas,        // Tipo de escamas del pez
    String tipoAlimentacion,    // Tipo de alimentación del pez
    String tipoReproduccion,    // Tipo de reproducción del pez
    String habitatNatural,      // Hábitat natural del pez
  ) : super(
          nombre,
          0,    // Los peces no tienen patas
          true, // Los peces pueden nadar
          false, // Los peces no pueden volar
          tipoAlimentacion,
          tipoReproduccion,
          habitatNatural,
        ) {
    this.tipoEscamas = tipoEscamas; // Asigna el valor inicial en el constructor
  }

  // Método para obtener información específica de los peces
  @override
  void obtenerInformacion() {
    super.obtenerInformacion(); // Llama al método de la clase base Animal
    print("Tipo de escamas: $tipoEscamas");
  }

  void obtenerInformacionEspecifica() {
    obtenerInformacion();
    // Agregar aquí información específica de los peces si es necesario.
  }
}
