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
const lugarActual = 'coghlan'

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

/*
Ejercicio 2 - Tom y Jerry

Implementar en Wollok un objeto que represente a tom, que es un gato.
Lo que nos interesa de tom es manejar su energía y su velocidad, que dependen de sus actividades de comer ratones y de correr. 
La persona que registra las actividades de tom, registra los ratones que come y la cantidad de tiempo que corre en segundos. Cuando tom come un ratón, su energía aumenta en (12 joules + el peso del ratón en gramos). La velocidad de tom es 5 metros x segundo + (energia medida en joules / 10). 
Cuando tom corre, su energía disminuye en (0.5 x cantidad de metros que corrió). Observar que la cuenta está en joules consumidos por metro, pero cuando me dicen cuánto corrió, me lo dicen en segundos. La velocidad que se toma es la que corresponde a la energía de Tom antes de empezar a correr, y no varía durante una carrera.
Nota: además de tom, hay otros objetos en juego, ¿cuáles son, qué mensaje tienen que entender?
Lograr que tom entienda el mensaje:
tom.meConvieneComerRatonA(unRaton, unaDistancia)
Devuelve true si la energía que gana por comer al ratón es mayor a la que consume corriendo la distancia, que está medida en metros.

*/
object tom {

    var energiaTom = 100
    var velocidadTom = 5

    method energiaTom() = energiaTom
    method velocidadTom() =   5+(energiaTom/10)


    method comer (){
        const pesoRaton = 10
        energiaTom = 12 + pesoRaton
        velocidadTom += energiaTom
    }

    method correr(segundos) {
        const metros = 10
        energiaTom = metros 
        const velocidadInicial = self.velocidadTom()   // velocidad antes de correr
        const distancia = velocidadInicial * segundos
        const consumo = 0.5 * distancia

        energiaTom -= consumo
    }
}

//////////////////////////////////////////////////////////////////////////////

/*
Ejercicio 3 - Sueldo de Pepe

Implementar en Wollok los objetos necesarios para calcular el sueldo de Pepe.
El sueldo de pepe se calcula así: sueldo = neto + bono x presentismo + bono x resultados.
El neto es el de la categoría, hay dos categorías: gerentes que ganan $1000 de neto, y cadetes que ganan $1500.
Hay dos bonos por presentismo:
Es $100 si la persona a quien se aplica no faltó nunca, $50 si faltó un día, $0 en cualquier otro caso;
En el otro, nada.
Hay tres posibilidades para el bono por resultados:
10% sobre el neto
$80 fijos
O nada
Jugar cambiándole a pepe la categoría, la cantidad de días que falta y sus bonos por presentismo y por resultados; y preguntarle en cada caso su sueldo.
Nota: acá aparecen varios objetos, piensen bien a qué objeto le piden cada cosa que hay que saber para poder llegar al sueldo de pepe.
*/

// === Categorías ===
object gerente {
    method neto() = 1000
}

object cadete {
    method neto() = 1500
}

// === Bonos por Presentismo ===
object bonoPresentismoNormal {
    method calcular(ausentismo) {
        if(ausentismo == 0) return 100
        if(ausentismo == 1) return 50
        return 0
    }
}

object bonoPresentismoNulo {
    method calcular(ausentismo) = 0
}

// === Bonos por Resultados ===
object bonoResultadosPorcentajeNeto {
    method calcular(neto) = neto * 0.1
}

object bonoResultadosMontoFijo {
    method calcular(neto) = 80
}

object bonoResultadosNulo {
    method calcular(neto) = 0
}

// === Empleado (ejemplo: Pepe) ===
object pepe {
    var property categoria = gerente
    var property ausentismo = 0
    var property bonoPorPresentismo = bonoPresentismoNormal
    var property bonoPorResultados = bonoResultadosPorcentajeNeto

    method sueldo() {
        const neto = categoria.neto()
        return neto +
            bonoPorPresentismo.calcular(ausentismo) +
            bonoPorResultados.calcular(neto)
    }
}


//////////////////////////////////////////////////////////////////////////////

/*
Ejercicio 4 - Celulares
Se pide representar con objetos a personas que hablan entre sí por celulares.
Juliana tiene un Samsung S21, y Catalina tiene un iPhone.
El Samsung S21 pierde 0,25 "puntos" de batería por cada llamada, y el iPhone pierde 0,1% de la duración de cada llamada en batería. Ambos celulares tienen 5 "puntos" de batería como máximo.
Implementar a Juliana, Catalina, el Samsung S21 de Juliana y el iPhone de Catalina en Wollok y hacer pruebas en donde Juliana y Catalina se hagan llamadas telefónicas de distintas duraciones.
Conocer la cantidad de batería de cada celular.
Saber si un celular está apagado (si está sin batería).
Recargar un celular (que vuelva a tener su batería completa).
Saber si Juliana tiene el celular apagado; saber si Catalina tiene el celular apagado.
Ahora podemos también tener en cuenta el costo de las llamadas que se hacen entre Catalina y Juliana. Catalina tiene contratado como servicio de telefonía celular a Movistar, Juliana a Personal. Movistar cobra fijo $60 final el minuto, Claro cobra $50 el minuto + 21% de IVA y Personal $70 final los primeros 10 minutos que usaste el celu, y $40 el minuto el resto. 
Se pide hacer un diagrama de objetos que represente esto y saber cuánta plata gastó cada uno luego de haberse hecho varias llamadas entre sí.
¿Qué objeto me conviene que conozca a la compañía telefónica? ¿Qué debería pasar con los gastos de llamadas si a Juliana se le rompe su celular y se compra uno nuevo?
*/

object juliana {
    const celularJuliana = new SamsungS21()
    method conocerBateria() = celularJuliana.conocerBateria()
}

object catalina {
    const celularCatalina = new IPhone()
    method conocerBateria() = celularCatalina.conocerBateria()
}

class Celular {
    var bateria = 5

    method bateria() = bateria
    method hacerLlamada(duracionEnMinutos) {}
    method cantidadBateria() = bateria
    method estaApagado() = bateria <= 0
    method recargar() {
        bateria = 5
    }
}

class SamsungS21 inherits Celular{

    override method hacerLlamada(duracionEnMinutos) {
        const consumoPorLlamada = 0.25
        bateria -= consumoPorLlamada
    }

}

class IPhone inherits Celular{
 
    override method hacerLlamada(duracionEnMinutos) {
        const consumoPorMinuto = 0.1
        bateria -= duracionEnMinutos * consumoPorMinuto
    }

}



//////////////////////////////////////////////////////////////////////////////