
class Asistente {
    var tipoDeAbono // var porque puede cambiar de abono 
    const historiaDeEntrada = []
    var property dineroDisponible

    method puedeComprarEntrada() = dineroDisponible > 0

    method compraEntrada(banda, fecha) {
        if (!self.puedeComprarEntrada()) {
            throw new Exception(message = "Saldo insuficiente") // manejo de errores, la compra no puede hacerse y salta error (no se si esta bien manejado pero bueno =( )
        }
        const entrada = new Entrada(banda = banda, fechaQueToca = fecha)
        dineroDisponible -= tipoDeAbono.montoAPagar(entrada.precioFinal())
        historiaDeEntrada.add(entrada)
        productora.registrarVenta(entrada)
    }

    method entradasAnioAnterior() {
        const anioAnterior = new Date().year() - 1 // objeto nuevo 
        return historiaDeEntrada.filter({ entrada => entrada.fechaQueToca().year() == anioAnterior })
    }

    method nombresDeBandasConEntrada() =
        historiaDeEntrada.map({ entrada => entrada.banda().nombreBanda() }).asSet()

    method bonificar() {
        tipoDeAbono.bonificar()
    }
}
