import 'package:actividad3herencias/models/Mamiferos/mamiferos.dart';

// Clase MamiferosVoladores que hereda de la clase Mamiferos
class MamiferosVoladores extends Mamiferos {
  late String tipoAlas;         // Tipo de alas de los mamíferos voladores
  late int velocidadVuelo;      // Velocidad de vuelo de los mamíferos voladores

  // Constructor de la clase MamiferosVoladores que inicializa sus atributos y llama al constructor de la clase Mamiferos
  MamiferosVoladores(
    String nombre,              // Nombre del mamífero volador
    int numPatas,               // Número de patas del mamífero volador
    bool puedeNadar,           // Indica si el mamífero volador puede nadar
    bool puedeVolar,           // Indica si el mamífero volador puede volar
    String tipoAlimentacion,    // Tipo de alimentación del mamífero volador
    String tipoReproduccion,    // Tipo de reproducción del mamífero volador
    String habitatNatural,      // Hábitat natural del mamífero volador
    String tipoPelaje,          // Tipo de pelaje del mamífero volador
    bool esAcuatico,            // Indica si el mamífero volador es acuático
    this.tipoAlas,              // Tipo de alas del mamífero volador
    this.velocidadVuelo,        // Velocidad de vuelo del mamífero volador
  ) : super(nombre, numPatas, puedeNadar, puedeVolar, tipoAlimentacion, tipoReproduccion, habitatNatural, tipoPelaje, esAcuatico);

  // Método para obtener información específica de los mamíferos voladores
  void obtenerInformacionMamiferosVuelo() {
    super.obtenerInformacion(); // Llama al método de la clase base Mamiferos
    print("Tipo de Alas: $tipoAlas");
    print("Velocidad de Vuelo: $velocidadVuelo");
  }
}
