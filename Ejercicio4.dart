class Producto {
  String nombre;
  double precio;
  int cantidadEnStock;

  Producto(this.nombre, this.precio, this.cantidadEnStock);
}

class ProductoConGestion extends Producto {
  ProductoConGestion(String nombre, double precio, int cantidad)
      : super(nombre, precio, cantidad) {
    print('Producto creado: $nombre');
    print('Precio: \$${precio.toStringAsFixed(2)}');
    print('Stock inicial: $cantidadEnStock');
    
    
    cantidadEnStock += 5;  
    print('Stock después de aumento: $cantidadEnStock');
    
    cantidadEnStock -= 3;  
    print('Stock después de reducción: $cantidadEnStock');
  }
}

void main() {
  ProductoConGestion('Laptop', 1500.0, 10);
}
