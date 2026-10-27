
object productora { // wko, la productora es unica 
    var property impuesto // aca se que tiene que ir un valor pero no se cual :(
    const property bandas = []
    const entradasVendidas = [] // listas

    method registrarVenta(entrada) {
        entradasVendidas.add(entrada)
    }

    method cantidadEntradasVendidas() = entradasVendidas.size()

    method recaudacion() = entradasVendidas.sum({ entrada => entrada.precioFinal() })

    method gananciaTotal() = self.recaudacion() - bandas.sum({ banda => banda.presupuesto() }) 

    method entradasVendidasDe(banda) = entradasVendidas.count({ entrada => entrada.banda() == banda })

    method bandaMasPopular() = bandas.max({ banda => self.entradasVendidasDe(banda) })
}
// aca use funciones de orden superior como sum