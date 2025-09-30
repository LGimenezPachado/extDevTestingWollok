/*
📌 Enunciado

Una empresa de transporte quiere calcular el costo de envío 
de sus paquetes.
Cada paquete tiene un peso y un destino.
Los destinos pueden ser: local, nacional o internacional.
Además, existen diferentes métodos de envío: normal, 
exprés y premium.
El costo final depende de:
- El costo base del destino.
- Un recargo adicional según el tipo de envío.

Queremos poder crear paquetes con distintos destinos y métodos 
de envío, y preguntarle a cada paquete cuál es su costo total de 
envío.
*/

object paquete {
    const peso = 0
    const destino = ""
    const costoBase = 0
    
    method costoBase() = costoBase

    }

object envios {    
const tipoRapidez = ["normal", "expres", "premium"]
const tipoDistancia = ["local", "nacional", "internacional"]
const costoFinal = 0
const tipodeEnvio = ""

  method costoFinal() = costoFinal
  method tipoDeEnvio() = tipodeEnvio
}