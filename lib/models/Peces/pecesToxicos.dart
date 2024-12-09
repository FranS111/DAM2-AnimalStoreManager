import 'package:actividad3herencias/models/Peces/peces.dart';

// Clase PecesToxicos que hereda de la clase Peces
class PecesToxicos extends Peces {
  late String potenciaVeneno;  // Potencia del veneno del pez tóxico
  late int tiempoEfecto;      // Tiempo de efecto del veneno del pez tóxico

  // Constructor de la clase PecesToxicos que inicializa sus atributos y llama al constructor de la clase Peces
  PecesToxicos(
    String nombre,              // Nombre del pez tóxico
    String tipoEscamas,        // Tipo de escamas del pez tóxico
    String tipoAlimentacion,   // Tipo de alimentación del pez tóxico
    String tipoReproduccion,   // Tipo de reproducción del pez tóxico
    String habitatNatural,     // Hábitat natural del pez tóxico
    String potenciaVeneno,     // Potencia del veneno del pez tóxico
    int tiempoEfecto,          // Tiempo de efecto del veneno del pez tóxico
  ) : super(
      nombre,
      tipoEscamas,
      tipoAlimentacion,
      tipoReproduccion,
      habitatNatural,
    ) {
    this.potenciaVeneno = potenciaVeneno;
    this.tiempoEfecto = tiempoEfecto;
  }

  // Método para obtener información específica de los peces tóxicos
  void obtenerInformacionMamiferosVuelo() {
    super.obtenerInformacion(); // Llama al método de la clase base Peces
    print("Potencia del Veneno: $potenciaVeneno");
    print("Tiempo de efecto del Veneno: $tiempoEfecto");
  }
}

