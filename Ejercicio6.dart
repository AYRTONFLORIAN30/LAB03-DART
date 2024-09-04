class Habitacion {
  int numeroHabitacion;
  String tipo;
  bool estaDisponible;

  Habitacion(this.numeroHabitacion, this.tipo, this.estaDisponible);
}

mixin ReservaHabitacion {}

class HabitacionReservada extends Habitacion with ReservaHabitacion {
  HabitacionReservada(int numeroHabitacion, String tipo, bool estaDisponible)
      : super(numeroHabitacion, tipo, estaDisponible) {
    print('Habitación número: $numeroHabitacion');
    print('Tipo: $tipo');
    print('Disponible: ${estaDisponible ? 'Sí' : 'No'}');

    estaDisponible = false;
    print('Nuevo estado después de la reserva: ${estaDisponible ? 'Disponible' : 'No disponible'}');
    print('---');
  }
}

void main() {
  
  List<HabitacionReservada> habitaciones = [
    HabitacionReservada(101, 'Sencilla', true),
    HabitacionReservada(102, 'Doble', true),
    HabitacionReservada(103, 'Suite', false)
  ];

  for (var habitacion in habitaciones) {
  }
}

