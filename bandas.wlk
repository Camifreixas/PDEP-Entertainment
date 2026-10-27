class Banda { // Banda es una clase abstracta porque tiene metodos abstractos y no puede ser instanciada. Ademas es una superclase ya que BandaRock, BandaTrap y BandaIndie heredan comportamientos de ella 
    const property nombreBanda
    var valorCanon = 1000000
    method canon() = valorCanon
    method popularidad() // metodos abstractos
    method gastoExtra()
    method presupuesto() = self.gastoExtra() + self.canon()

}

class BandaRock inherits Banda {
    var solosDeGuitarra
    override method gastoExtra() = 10000
    override method popularidad() = 100 * solosDeGuitarra 
}

class BandaTrap inherits Banda {
   const tieneHielo
    override method gastoExtra() = 0
    override method popularidad()  {
        if(tieneHielo){
        return 1000 
        }
        else return 0
    }
    override method canon() = self.popularidad() * valorCanon
// su canon es diferente
}

class BandaIndie inherits Banda{
    const property cantidadInstrumentos // es un int
    override method popularidad() {
       3.14 * nombreBanda.lenght() 
    }
    override method gastoExtra() {
        500 * cantidadInstrumentos

    } 

}

