// (>)
// (<)

//sistema de biblioteca 

class Libro {
    const titulo
    const autor
    const cantidadDePaginas 
    var estaPrestado = false

    method prestar() {
        estaPrestado = true
    }

    method devolver() {
        estaPrestado = false
    }

    method esPesado() {
        return cantidadDePaginas > 500
    }   

    method estaPrestado () {
        return estaPrestado
    }
}

class Socio {
    const nombre
    const librosPrestados = []

    method tomarPrestado(libro) {
        libro.prestar()
        librosPrestados.add(libro)
    }

    method devolver(libro) {
        libro.devolver()
        librosPrestados.remove(libro)
    }

    method cantidadDeLibrosPrestados() {
        return librosPrestados.size()
    }
}

//juego de rol

class Personaje {
    const nombre
    var puntosDeVida = vivo
    var fuerza

    method atacar () {

    }

    method recibirAtaque () {

    }

    method estaVIvo () {
        return puntosDeVida 
    }
}

class Guerrero inherits Personaje {
    override method atacar () {
        return fuerza *2
    }
}

class Mago inherits Personaje {
    const poderMagico = 50
    
    override method atacar() {
        return fuerza + poderMagico
    }
}

class Arquero inherits Personaje {
    override method atacar () {
        return fuerza * 1.5
    }
}

