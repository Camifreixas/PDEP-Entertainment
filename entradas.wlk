
class Entrada { // entrada es clase porque hay muchas entradas pero cada una con su fecha y banda
    const property banda 
    const property fechaQueToca
    const precioBase = 1000 // metodo concretio porque es igual para todas

    method precioFinal() = productora.impuesto() + precioBase // le manda mensaje a otro objeto
}