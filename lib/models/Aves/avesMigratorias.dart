import 'package:actividad3herencias/models/Aves/aves.dart';

// Clase AvesMigratorias que hereda de la clase Aves
class AvesMigratorias extends Aves {
  late String tipoMigracion;      // Tipo de migración de las aves migratorias
  late String destinoMigracion;  // Destino de la migración
  late int distanciaMigracion;   // Distancia de la migración

  // Constructor de la clase AvesMigratorias que inicializa sus atributos y llama al constructor de la clase Aves
  AvesMigratorias(
    String nombre,            // Nombre del ave migratoria
    String tipoPico,          // Tipo de pico del ave migratoria
    String colorPlumaje,      // Color del plumaje del ave migratoria
    String tipoAlimentacion,  // Tipo de alimentación del ave migratoria
    String tipoReproduccion,  // Tipo de reproducción del ave migratoria
    String habitatNatural,    // Hábitat natural del ave migratoria
    String tipoMigracion,     // Tipo de migración del ave migratoria
    String destinoMigracion,  // Destino de la migración
    int distanciaMigracion,   // Distancia de la migración
  ) : super(
      nombre,
      2,
      false,
      true,                  
      tipoAlimentacion,
      tipoReproduccion,
      habitatNatural,
      tipoPico,
      colorPlumaje,
    ) {
    this.tipoMigracion = tipoMigracion;
    this.destinoMigracion = destinoMigracion;
    this.distanciaMigracion = distanciaMigracion;
  }

  // Método que muestra información específica de las aves migratorias
  void obtenerInformacionEspecifica() {
    super.obtenerInformacion(); // Llama al método de la clase base Aves
    print("Tipo de migración: $tipoMigracion");
    print("Destino de migración: $destinoMigracion");
    print("Distancia de migración: $distanciaMigracion");
  }
}
