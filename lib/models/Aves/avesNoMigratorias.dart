import 'aves.dart';

// Clase AvesNoMigratorias que hereda de la clase Aves
class AvesNoMigratorias extends Aves {
  // Constructor de la clase AvesNoMigratorias que inicializa sus atributos y llama al constructor de la clase Aves
  AvesNoMigratorias(
    String nombre,            // Nombre del ave no migratoria
    String tipoPico,          // Tipo de pico del ave no migratoria
    String colorPlumaje,      // Color del plumaje del ave no migratoria
    String tipoAlimentacion,  // Tipo de alimentación del ave no migratoria
    String tipoReproduccion,  // Tipo de reproducción del ave no migratoria
    String habitatNatural,    // Hábitat natural del ave no migratoria
  ) : super(
      nombre,
      2,
      false,      // Las aves no migratorias no pueden nadar
      true,       // Las aves no migratorias pueden volar
      tipoAlimentacion,
      tipoReproduccion,
      habitatNatural,
      tipoPico,
      colorPlumaje,
    );
}
