class Animal {
  String nombre;
  int numPatas;
  bool puedeNadar;
  bool puedeVolar;
  String tipoAlimentacion;
  String tipoReproduccion;
  String habitatNatural;  

  // Constructor de la clase Animal
  Animal(this.nombre, this.numPatas, this.puedeNadar, this.puedeVolar, this.tipoAlimentacion, this.tipoReproduccion, this.habitatNatural);

  // Método para obtener información del animal
  void obtenerInformacion() {
    print("Nombre: $nombre");
    print("Número de patas: $numPatas");
    print("Puede nadar: $puedeNadar");
    print("Puede volar: $puedeVolar");
    print("Tipo de comida: $tipoAlimentacion");
    print("Tipo de comida: $tipoReproduccion");
    print("Habitat Natural: $habitatNatural");

  }
}