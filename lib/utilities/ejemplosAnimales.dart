import 'package:actividad3herencias/animal.dart';
import 'package:actividad3herencias/models/Aves/avesMigratorias.dart';
import 'package:actividad3herencias/models/Aves/avesNoMigratorias.dart';
import 'package:actividad3herencias/models/Mamiferos/mamiferos.dart';
import 'package:actividad3herencias/models/Mamiferos/mamiferosVoladores.dart';
import 'package:actividad3herencias/models/Peces/peces.dart';
import 'package:actividad3herencias/models/Peces/pecesToxicos.dart';

//Clase para crear ejemplos de animales de cada tipo
class EjemplosAnimales {
  static void agregarEjemplos(List<Animal> listaAnimales) {
    // Ejemplo de Ave Migratoria
    AvesMigratorias aveMigratoria = AvesMigratorias(
      "Gorrión",
      "Pico Largo",
      "Rojo",
      "Gusanos",
      "Puesta de Huevos",
      "Bosque",
      "Migración de Invierno",
      "Costa Rica",
      1000,
    );

    // Ejemplo de Ave No Migratoria
    AvesNoMigratorias aveNoMigratoria = AvesNoMigratorias(
      "Cuervo",
      "Pico Corto",
      "Azul",
      "Semillas",
      "Incubación Interna",
      "Pradera",
    );

    // Ejemplo de Mamífero
    Mamiferos mamifero = Mamiferos(
      "Tapir",
      4,
      true,
      false,
      "Herbívoro",
      "Vivíparos",
      "Selva",
      "Pelaje Largo",
      false,
    );

    // Ejemplo de Mamífero Volador
    MamiferosVoladores mamiferoVolador = MamiferosVoladores(
      "Murciélago",
      4,
      true,
      true,
      "Insectos",
      "Vivíparos",
      "Cueva",
      "Pelaje Corto",
      false,
      "Alas Largas",
      5000,
    );

    // Ejemplo de Pez Normal
    Peces pezNormal = Peces(
      "Pez Payaso",
      "Escamas Plateadas",
      "Plancton",
      "Puesta de Huevos",
      "Océano",
    );

    // Ejemplo de Pez Tóxico
    PecesToxicos pezToxico = PecesToxicos(
      "Pez Globo",
      "Escamas Venenosas",
      "Peces Pequeños",
      "Incubación Externa",
      "Arrecife de Coral",
      "Muy Alto",
      30,
    );

    // Agregar los ejemplos a la lista de animales
    listaAnimales.add(aveMigratoria);
    listaAnimales.add(aveNoMigratoria);
    listaAnimales.add(mamifero);
    listaAnimales.add(mamiferoVolador);
    listaAnimales.add(pezNormal);
    listaAnimales.add(pezToxico);
  }
}
