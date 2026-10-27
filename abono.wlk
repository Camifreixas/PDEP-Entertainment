
object fan { // fan es wko
    method montoAPagar(precio)= precio
    method bonificar() { } // metodo vacio 

}

class Vip { // es clase porque c/ asistente vip tiene un descuento especiial
  var descuento 
  method montoAPagar(precio) = precio * (1 - descuento/100)
  method bonificar() {
    descuento += 1
  }
}

// polimorficos, entienden los mismos mensajes 