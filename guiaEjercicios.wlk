/*
Ejercicio 1 - Pepita básica

1) Codificar a pepita en Wollok, con estos patrones de modificación de la energía:
- cuando vuela, consume un joule por cada kilómetro que vuela, más 10 joules de "costo fijo" en cada vuelo.
- cuando come, adquiere 4 joules por cada gramo que come.
No olvidar la inicialización.

2) Pepita ahora es mensajera, le enseñamos a volar sobre la ruta 9.
Agregar los siguientes lugares sobre la ruta 9, con el kilómetro en el que está cada una, y agregar lo que haga falta para que:
- pepita sepa dónde está (vale indicarle un lugar inicial al inicializarla).
- le pueda decir a pepita que vaya a un lugar, eso cambia el lugar y la hace volar la distancia.
- pueda preguntar si pepita puede o no ir a un lugar, puede ir si le da la energía para hacer la distancia entre donde está y donde le piden ir.
Por ahora no validamos cuando le pedimos que vaya que pueda ir, eso lo agregaremos más adelante.

3) Pensar en particular
- qué objeto se debe encargar del cálculo de la distancia entre dos lugares, piensen cómo lo preguntarían desde la consola. 
Si resulta que el cálculo se repite para distintos objetos… OK, después vamos a ver cómo arreglar eso.
- cómo hago para no repetir en distintos métodos de pepita la cuenta de la energía que necesita para moverse una cantidad de kilómetros.
*/

object pepita {
var energia = 100
const km = 10
const gr = 1
var lugarActual = 'coghlan'

//getters
method energia() = energia
method lugarActual() = lugarActual

method volar () {
const costoFijo = 10
const consumoPorKm = 1
const lugar = "coghlan"

energia -= km * consumoPorKm + costoFijo


}

method comer (){
const joulePorGramo = 4

energia += gr * 4
}

}



//////////////////////////////////////////////////////////////////////////////

object tom {

    var energiaTom = 100
    var velocidadTom = 5

    method energiaTom() = energiaTom
    method velocidadTom() = velocidadTom

    method comer (){
        const pesoRaton = 10
        energiaTom = 12 + pesoRaton
        velocidadTom += energiaTom
    }

    method correr() {
        const metros = 10
        energiaTom -= metros
    }
}