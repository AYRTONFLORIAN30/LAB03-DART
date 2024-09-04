// Clase base Votante
class Votante {
  String nombre;
  int edad;
  bool haVotado;

  Votante(this.nombre, this.edad, this.haVotado);
}

// Mixin ValidacionVoto (aunque no tendrá métodos, solo para completar la estructura)
mixin ValidacionVoto {
  // Este mixin podría tener métodos normalmente, pero los estamos evitando según tu solicitud
}

// Clase VotanteValido que hereda de Votante y usa el mixin ValidacionVoto
class VotanteValido extends Votante with ValidacionVoto {
  VotanteValido(String nombre, int edad, bool haVotado)
      : super(nombre, edad, haVotado) {
    print('Votante: $nombre');
    print('Edad: $edad');
    print('Ha votado antes: ${haVotado ? 'Sí' : 'No'}');
    
    // Simulando la validación de voto con solo print
    if (edad >= 18) {
      print('El votante es elegible para votar.');
    } else {
      print('El votante NO es elegible para votar.');
    }
  }
}

void main() {
  // Creación de un objeto de tipo VotanteValido
  VotanteValido('Juan Pérez', 20, false);
}
