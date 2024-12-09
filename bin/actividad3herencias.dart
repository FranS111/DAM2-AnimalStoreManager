import 'dart:io';
import 'package:actividad3herencias/animal.dart';
import 'package:actividad3herencias/models/Aves/avesMigratorias.dart';
import 'package:actividad3herencias/models/Aves/avesNoMigratorias.dart';
import 'package:actividad3herencias/models/Mamiferos/mamiferos.dart';
import 'package:actividad3herencias/models/Mamiferos/mamiferosVoladores.dart';
import 'package:actividad3herencias/models/Peces/peces.dart';
import 'package:actividad3herencias/models/Peces/pecesToxicos.dart';
import 'package:actividad3herencias/utilities/ejemplosAnimales.dart';

//Esta es la clase MAIN (Tienda de animales)
void main() {
  List<Animal> listaAnimales = []; // Lista para almacenar animales

  EjemplosAnimales.agregarEjemplos(listaAnimales);

//Metodo para conseguir los animales voladores que tengamos registrados
  List<Animal> getAnimalesVoladores() {
    List<Animal> animalesVoladores = [];

    for (var animal in listaAnimales) {
      if (animal.puedeVolar) {
        animalesVoladores.add(animal);
      }
    }

    return animalesVoladores;
  }

  //Metood para imprimir la lista de animales
  void imprimirListaAnimales(List<Animal> animales) {
    for (var animal in animales) {
      animal.obtenerInformacion();
      print(""); // Agregar un salto de línea para separar los animales
    }
  }

//Metodo para eliminar animales buscandolos con el nombre
  void deleteAnimal(String nombre) {
    for (var animal in listaAnimales) {
      if (animal.nombre == nombre) {
        listaAnimales.remove(animal);
        return; // Sal del bucle cuando se elimine el animal
      }
    }
    print("No se encontró un animal con el nombre '$nombre'.");
  }

  //Metodo para actualizar un animal usando su nombre para encontrarlo
  void updateAnimal(Animal animal, Animal newAnimal) {
    int index = listaAnimales.indexOf(animal);
    if (index != -1) {
      print("Nuevo nombre del animal:");
      String nuevoNombre = stdin.readLineSync() ?? "";

      // Captura los valores de los nuevos atributos
      print("Nuevo número de patas (entero):");
      int nuevoNumPatas =
          int.tryParse(stdin.readLineSync() ?? "") ?? animal.numPatas;

      print("¿Puede nadar? (true / false):");
      bool puedeNadar =
          stdin.readLineSync()?.toLowerCase() == "true" ? true : false;

      print("¿Puede volar? (true / false):");
      bool puedeVolar =
          stdin.readLineSync()?.toLowerCase() == "true" ? true : false;

      print("Nuevo tipo de alimentación:");
      String nuevoTipoAlimentacion = stdin.readLineSync() ?? "";

      print("Nuevo tipo de reproducción:");
      String nuevoTipoReproduccion = stdin.readLineSync() ?? "";

      print("Nuevo hábitat natural:");
      String nuevoHabitatNatural = stdin.readLineSync() ?? "";

      // Crea un nuevo objeto Animal con los atributos actualizados
      Animal animalActualizar = Animal(
          nuevoNombre.isNotEmpty ? nuevoNombre : animal.nombre,
          nuevoNumPatas > 0 ? nuevoNumPatas : animal.numPatas,
          puedeNadar,
          puedeVolar,
          nuevoTipoAlimentacion.isNotEmpty
              ? nuevoTipoAlimentacion
              : animal.tipoAlimentacion,
          nuevoTipoReproduccion.isNotEmpty
              ? nuevoTipoReproduccion
              : animal.tipoReproduccion,
          nuevoHabitatNatural.isNotEmpty
              ? nuevoHabitatNatural
              : animal.habitatNatural);

      // Actualiza la lista de animales
      listaAnimales[index] = animalActualizar;
    }
  }

  void updateAnimalByName(String nombreAnimalAActualizar) {
    Animal? animalActualizar = null;
    for (var animal in listaAnimales) {
      if (animal.nombre == nombreAnimalAActualizar) {
        animalActualizar = animal;
        break;
      }
    }

    if (animalActualizar == null) {
      print(
          "No se encontró un animal con el nombre '$nombreAnimalAActualizar'.");
    } else {
      // Permite al usuario modificar todos los atributos del animal
      print(
          "Ingresa los nuevos valores (o presiona Enter para mantener el valor actual):");

      print("Nuevo nombre (${animalActualizar.nombre}):");
      String nuevoNombre = stdin.readLineSync() ?? animalActualizar.nombre;

      print("Nuevo número de patas (${animalActualizar.numPatas}):");
      int nuevoNumPatas = int.tryParse(
              stdin.readLineSync() ?? animalActualizar.numPatas.toString()) ??
          animalActualizar.numPatas;

      print("¿Puede nadar? (true / false) (${animalActualizar.puedeNadar}):");
      bool puedeNadar = stdin.readLineSync()?.toLowerCase() == "true" ||
          animalActualizar.puedeNadar;

      print("¿Puede volar? (true / false) (${animalActualizar.puedeVolar}):");
      bool puedeVolar = stdin.readLineSync()?.toLowerCase() == "true" ||
          animalActualizar.puedeVolar;

      print(
          "Nuevo tipo de alimentación (${animalActualizar.tipoAlimentacion}):");
      String nuevoTipoAlimentacion =
          stdin.readLineSync() ?? animalActualizar.tipoAlimentacion;

      print(
          "Nuevo tipo de reproducción (${animalActualizar.tipoReproduccion}):");
      String nuevoTipoReproduccion =
          stdin.readLineSync() ?? animalActualizar.tipoReproduccion;

      print("Nuevo hábitat natural (${animalActualizar.habitatNatural}):");
      String nuevoHabitatNatural =
          stdin.readLineSync() ?? animalActualizar.habitatNatural;

      // Crea un nuevo objeto Animal con los atributos actualizados
      Animal newAnimal = Animal(
        nuevoNombre,
        nuevoNumPatas,
        puedeNadar,
        puedeVolar,
        nuevoTipoAlimentacion,
        nuevoTipoReproduccion,
        nuevoHabitatNatural,
      );

      // Actualiza el animal en la lista
      int index = listaAnimales.indexOf(animalActualizar);
      if (index != -1) {
        listaAnimales[index] = newAnimal;
        print("Animal actualizado con éxito.");
      } else {
        print("No se pudo actualizar el animal.");
      }
    }
  }
  //While del menu principal
  while (true) {
    print("Menú:");
    print("1. Añadir aves");
    print("2. Añadir mamíferos");
    print("3. Añadir peces");
    print("4. Imprimir lista ordenada alfabéticamente");
    print("5. Salir");
    print("6. Imprimir animales Voladores");
    print("7. Eliminar animal");

    print("Elija una opción (1/2/3/4/5/6/7):");

    String opcion = stdin.readLineSync() ?? "";

    if (opcion == "1") {
      // Añadir aves
      print(
          "¿Qué tipo de ave deseas agregar? (migratoria / no migratoria / volver):");
      String tipoAve = stdin.readLineSync() ?? "";

      if (tipoAve == "volver") {
        continue;
      } else if (tipoAve == "migratoria") {
        // Captura información para el ave migratoria
        print("Nombre de la ave migratoria:");
        String nombre = stdin.readLineSync() ?? "";
        print("Tipo de pico:");
        String tipoPico = stdin.readLineSync() ?? "";
        print("Color de plumaje:");
        String colorPlumaje = stdin.readLineSync() ?? "";
        print("Tipo de alimentación:");
        String tipoAlimentacion = stdin.readLineSync() ?? "";
        print("Tipo de reproducción:");
        String tipoReproduccion = stdin.readLineSync() ?? "";
        print("Habitat natural:");
        String habitatNatural = stdin.readLineSync() ?? "";
        print("Tipo de migración:");
        String tipoMigracion = stdin.readLineSync() ?? "";
        print("Destino de migración:");
        String destinoMigracion = stdin.readLineSync() ?? "";
        print("Distancia de migración:");
        int distanciaMigracion = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

        // Crea una instancia de ave migratoria y agrégala a la lista
        AvesMigratorias aveMigratoria = AvesMigratorias(
          nombre,
          tipoPico,
          colorPlumaje,
          tipoAlimentacion,
          tipoReproduccion,
          habitatNatural,
          tipoMigracion,
          destinoMigracion,
          distanciaMigracion,
        );
        listaAnimales.add(aveMigratoria);
      } else if (tipoAve == "no migratoria") {
        // Captura información para el ave no migratoria
        print("Nombre del ave no migratoria:");
        String nombre = stdin.readLineSync() ?? "";
        print("Tipo de pico:");
        String tipoPico = stdin.readLineSync() ?? "";
        print("Color de plumaje:");
        String colorPlumaje = stdin.readLineSync() ?? "";
        print("Tipo de alimentación:");
        String tipoAlimentacion = stdin.readLineSync() ?? "";
        print("Tipo de reproducción:");
        String tipoReproduccion = stdin.readLineSync() ?? "";
        print("Habitat natural:");
        String habitatNatural = stdin.readLineSync() ?? "";

        // Crea una instancia de ave no migratoria y agrégala a la lista
        AvesNoMigratorias aveNoMigratoria = AvesNoMigratorias(
          nombre,
          tipoPico,
          colorPlumaje,
          tipoAlimentacion,
          tipoReproduccion,
          habitatNatural,

        );
        listaAnimales.add(aveNoMigratoria);
      } else {
        print(
            "Tipo de ave no válido. Por favor, ingresa 'migratoria', 'no migratoria' o 'volver'.");
      }
    } else if (opcion == "2") {
      // Añadir mamíferos
      print(
          "¿Qué tipo de mamífero deseas agregar? (regular / volador / volver):");
      String tipoMamifero = stdin.readLineSync() ?? "";

      if (tipoMamifero == "volver") {
        continue;
      } else if (tipoMamifero == "regular") {
        // Captura información para el mamífero regular
        print("Nombre del mamífero:");
        String nombre = stdin.readLineSync() ?? "";
        print("Tipo de pelaje:");
        String tipoPelaje = stdin.readLineSync() ?? "";
        print("¿Es acuático? (true / false):");
        bool esAcuatico = stdin.readLineSync()?.toLowerCase() == "true";
        print("¿Cual es su alimentacion?:");
        String tipoAlimentacion = stdin.readLineSync() ?? "";
        print("¿Cual es su habitat?:");
        String habitatNatural = stdin.readLineSync() ?? "";

        // Crea una instancia de mamífero y agrégala a la lista
        Mamiferos mamifero = Mamiferos(
          nombre,
          4,
          true, 
          false, 
          tipoAlimentacion,
          "Vivíparos",
          habitatNatural,
          tipoPelaje,
          esAcuatico,
        );
        listaAnimales.add(mamifero);
      } else if (tipoMamifero == "volador") {
        // Captura información para el mamífero volador
        print("Nombre del mamífero volador:");
        String nombre = stdin.readLineSync() ?? "";
        print("Tipo de pelaje:");
        String tipoPelaje = stdin.readLineSync() ?? "";
        print("¿Es acuático? (true / false):");
        bool esAcuatico = stdin.readLineSync()?.toLowerCase() == "true";
        print("¿Cual es su alimentacion?:");
        String tipoAlimentacion = stdin.readLineSync() ?? "";
        print("¿Cual es su habitat?:");
        String habitatNatural = stdin.readLineSync() ?? "";
        print("Tipo de alas:");
        String tipoAlas = stdin.readLineSync() ?? "";
        print("Altitud de vuelo (en metros):");
        int altitudVuelo = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

        // Crea una instancia de mamífero volador y agrégala a la lista
        MamiferosVoladores mamiferoVolador = MamiferosVoladores(
          nombre,
          4,
          true, 
          true,
          tipoAlimentacion,
          "Vivíparos",
          habitatNatural,
          tipoPelaje,
          esAcuatico,
          tipoAlas,
          altitudVuelo,
        );
        listaAnimales.add(mamiferoVolador);
      } else {
        print(
            "Tipo de mamífero no válido. Por favor, ingresa 'regular', 'volador' o 'volver'.");
      }
    } else if (opcion == "4") {
      // Imprimir lista ordenada alfabéticamente
      listaAnimales.sort((a, b) => a.nombre.compareTo(b.nombre));
      print("\nLista de animales ordenada alfabéticamente:");
      for (var animal in listaAnimales) {
        if (animal is AvesMigratorias) {
          print("Ave migratoria:");
          animal.obtenerInformacionEspecifica();
        } else if (animal is AvesNoMigratorias) {
          print("Ave no migratoria:");
          animal.obtenerInformacion();
        } else if (animal is Mamiferos) {
          print("Mamífero:");
          animal.obtenerInformacion();
        } else if (animal is MamiferosVoladores) {
          print("Mamífero volador:");
          animal.obtenerInformacion();
        } else if (animal is Peces) {
          print("Pez:");
          animal.obtenerInformacion();
        } else if (animal is PecesToxicos) {
          print("Pez tóxico:");
          animal.obtenerInformacionMamiferosVuelo();
        }
        print("\n");
      }
    } else if (opcion == "5") {
      // Salir del programa
      break;
    } else if (opcion == "7") {
      // Eliminar un animal
      print("Ingresa el nombre del animal que deseas eliminar:");
      String nombreAnimalAEliminar = stdin.readLineSync() ?? "";
      deleteAnimal(nombreAnimalAEliminar);
    } else if (opcion == "8") {
      // Actualizar todos los datos de un animal por su nombre
      print("Ingresa el nombre del animal que deseas actualizar:");
      String nombreAnimalAActualizar = stdin.readLineSync() ?? "";
      updateAnimalByName(nombreAnimalAActualizar);
    } else if (opcion == "6") {
      print("\nLista de animales Voladores:");

// Obtener animales voladores
      List<Animal> animalesVoladores = getAnimalesVoladores();
      imprimirListaAnimales(animalesVoladores);
    } else if (opcion == "3") {
      // Añadir peces
      print("¿Qué tipo de pez deseas agregar? (normal / toxico / volver):");
      String tipoPez = stdin.readLineSync() ?? "";

      if (tipoPez == "volver") {
        continue;
      } else if (tipoPez == "normal") {
        // Captura información para el pez normal
        print("Nombre del pez normal:");
        String nombre = stdin.readLineSync() ?? "";
        print("Tipo de escamas:");
        String tipoEscamas = stdin.readLineSync() ?? "";
        print("Tipo de alimentación:");
        String tipoAlimentacion = stdin.readLineSync() ?? "";
        print("Tipo de reproducción:");
        String tipoReproduccion = stdin.readLineSync() ?? "";
        print("Habitat natural:");
        String habitatNatural = stdin.readLineSync() ?? "";

        // Crea una instancia de pez normal y agrégala a la lista
        Peces pezNormal = Peces(
          nombre,
          tipoEscamas,
          tipoAlimentacion,
          tipoReproduccion,
          habitatNatural,
        );
        listaAnimales.add(pezNormal);
      } else if (tipoPez == "toxico") {
        // Captura información para el pez tóxico
        print("Nombre del pez tóxico:");
        String nombre = stdin.readLineSync() ?? "";
        print("Tipo de escamas:");
        String tipoEscamas = stdin.readLineSync() ?? "";
        print("Tipo de alimentación:");
        String tipoAlimentacion = stdin.readLineSync() ?? "";
        print("Tipo de reproducción:");
        String tipoReproduccion = stdin.readLineSync() ?? "";
        print("Habitat natural:");
        String habitatNatural = stdin.readLineSync() ?? "";
        print("Potencia del veneno:");
        String potenciaVeneno = stdin.readLineSync() ?? "";
        print("Tiempo de efecto del veneno (en minutos):");
        int tiempoEfecto = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

        // Crea una instancia de pez tóxico y agrégala a la lista
        PecesToxicos pezToxico = PecesToxicos(
          nombre,
          tipoEscamas,
          tipoAlimentacion,
          tipoReproduccion,
          habitatNatural,
          potenciaVeneno,
          tiempoEfecto,
        );
        listaAnimales.add(pezToxico);
      } else {
        print(
            "Tipo de pez no válido. Por favor, ingresa 'normal', 'toxico' o 'volver'.");
      }
    }
  }
}
