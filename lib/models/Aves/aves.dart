import 'package:actividad3herencias/animal.dart';

// Clase Aves que hereda de la clase base Animal
class Aves extends Animal {
  late String tipoPico;     // Tipo de pico de las aves
  late String colorPlumaje; // Color del plumaje de las aves

  // Constructor de la clase Aves que inicializa sus atributos y llama al constructor de la clase base Animal
  Aves(
    String nombre,        // Nombre del ave
    int numPatas,         // Número de patas (siempre 2 en aves)
    bool puedeNadar,     // Indica si el ave puede nadar
    bool puedeVolar,     // Indica si el ave puede volar
    String tipoAlimentacion,  // Tipo de alimentación del ave
    String tipoReproduccion,  // Tipo de reproducción del ave
    String habitatNatural,    // Hábitat natural del ave
    this.tipoPico,       // Tipo de pico del ave
    this.colorPlumaje     // Color del plumaje del ave
  ) : super(nombre, 2, puedeNadar, puedeVolar, tipoAlimentacion, "Oviparas", habitatNatural);

  // Método que sobrescribe el método de la clase base para mostrar información específica de las aves
  @override
  void obtenerInformacion() {
    super.obtenerInformacion(); // Llama al método de la clase base Animal
    print("Tipo de pico: $tipoPico");
    print("Color de plumaje: $colorPlumaje");
  }
}