import 'package:actividad3herencias/animal.dart';

// Clase Mamiferos que hereda de la clase Animal
class Mamiferos extends Animal {
  String tipoPelaje;     // Tipo de pelaje de los mamíferos
  bool esAcuatico;       // Indica si los mamíferos son acuáticos

  // Constructor de la clase Mamiferos que inicializa sus atributos y llama al constructor de la clase Animal
  Mamiferos(
    String nombre,          // Nombre del mamífero
    int numPatas,           // Número de patas del mamífero
    bool puedeNadar,       // Indica si el mamífero puede nadar
    bool puedeVolar,       // Indica si el mamífero puede volar
    String tipoAlimentacion,  // Tipo de alimentación del mamífero
    String tipoReproduccion,  // Tipo de reproducción del mamífero
    String habitatNatural,    // Hábitat natural del mamífero
    this.tipoPelaje,         // Tipo de pelaje del mamífero
    this.esAcuatico,         // Indica si el mamífero es acuático
  ) : super(nombre, numPatas, puedeNadar, puedeVolar, tipoAlimentacion, tipoReproduccion, habitatNatural);

  @override
  void obtenerInformacion() {
    super.obtenerInformacion(); // Llama al método de la clase base Animal
    print("Tipo de pelaje: $tipoPelaje");
    print("Es acuático: $esAcuatico");
  }

  // Método para obtener información específica de los mamíferos (puedes agregar información adicional aquí si es necesario)
  void obtenerInformacionEspecifica() {
    obtenerInformacion();
    // Agregar aquí información específica de los mamíferos si es necesario.
  }
}
