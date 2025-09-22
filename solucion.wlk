/*
----------------GUITARRA FENDER STRATOCASTER----------------------
*/
object fenderStratoCaster{
  var color = "negro"

  method esValioso() = true
  
  method afinado() = true

  method costo() = if(color != "negro") 10 else 15

  method nuevoColor(nuevoColor){
    color = nuevoColor
  }

}
/*
----------------TROMPETA JUPITER----------------------
*/
object trompetaJupiter{
  var temperatura = 20
  var conSordina = true

  method afinado() = 20 <= temperatura and temperatura <=25 
  
  method cambiarTemperatura(temperaturaAgregada) {
    temperatura += temperaturaAgregada
  }

  method sacarSordina(){
    conSordina = false
  }

  method ponerSordina(){
    conSordina = true
  }

  method costo() = if (conSordina) 35 else 30

  method esValioso() = false

}
/*
----------------PIANO BECHSTEIN----------------------
*/
object pianoBechstein {
  var largoHabitacion = 5
  var anchoHabitacion = 5

  method afinado() = (anchoHabitacion * largoHabitacion) > 20

  method costo() = 2* anchoHabitacion

  method esValioso() = self.afinado()

  method nuevaHabitacion (ancho, largo){
    anchoHabitacion = ancho
    largoHabitacion = largo
  }
}
/*
----------------VIOLIN STAGG----------------------
*/
object violinStagg {
  var tremolos = 0
  var pintura = "laca acrílica"

  method afinado() = tremolos <10
  
  method costo() = if (tremolos <= 5) 20-tremolos else 15

  method hacerTremolos(cantidadTremolos) {
    tremolos += cantidadTremolos
  }

  method cambiarPimtura(nuevaPintura) {
    pintura = nuevaPintura
  }

  method esValioso() = pintura == "laca acrílica"
}
/*
----------------MUSICO JOHANN----------------------
*/
object johann {
  var instrumento = trompetaJupiter

  method esFeliz () = instrumento.costo() > 20

  method cambiarInstrumento(nuevoInstrumento) {
    instrumento = nuevoInstrumento
  }
}
/*
----------------MUSICO WOLFGANG----------------------
*/
object wolfgang {
  method esFeliz() = johann.esFeliz()
}
/*
----------------MUSICO ANTONIO----------------------
*/
object antonio {
  var instrumento = pianoBechstein

  method esFeliz() = instrumento.esValioso()

  method cambiarInstrumento(nuevoInstrumento) {
    instrumento = nuevoInstrumento
  }
}
/*
----------------MUSICO GIUSEPPE----------------------
*/
object giuseppe {
  var instrumento = fenderStratoCaster
  
  method esFeliz() = instrumento.afinado()

  method cambiarInstrumento(nuevoInstrumento) {
    instrumento = nuevoInstrumento
  }
}
/*
----------------MUSICO MADDALENA----------------------
*/
object maddalena {
  var instrumento = violinStagg 

  method esFeliz () = instrumento.costo() %2 == 0

  method cambiarInstrumento(nuevoInstrumento) {
    instrumento = nuevoInstrumento
  }
}
/*
----------------ASOCIACION MUSICAL----------------------
*/
object asociacionMusical {
  const musicos = []

  method musicosFelices() = musicos.filter{musico => musico.esFeliz()}

  method agregarMusicos(nuevosMusicos) = musicos.addAll(nuevosMusicos)

}