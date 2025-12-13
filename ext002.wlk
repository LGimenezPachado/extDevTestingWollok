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
    var puntosDeVida = 100 
    var fuerza

    method atacar () {

    }

    method recibirAtaque (cantidad) {
        puntosDeVida = puntosDeVida - cantidad 
    }

    method estaVIvo () {
        return puntosDeVida > 0
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

// sistema de empleados
class Empleado {
    const nombre
    const sueldoBasico

    method calcularSueldo() {
        return sueldoBasico
    }
}

class EmpleadoFijo inherits Empleado {
    const bonoFijo = 10000

    override method calcularSueldo () {
        return sueldoBasico + bonoFijo
    }
}

class EmpleadoTemporal inherits Empleado {
    const cantidadHorasTrabajadas
    
    override method calcularSueldo() {
        return sueldoBasico * cantidadHorasTrabajadas
    }
}

class EmpleadoPorComision inherits Empleado {
    const ventasRealizadas
    
    override method calcularSueldo () {
        return sueldoBasico + (ventasRealizadas * 0.05)
    }
}

class Empresa {
    const listaDeEmpleados []

    method agregarEmpleado(empleado) {
        listaDeEmpleados.add(empleado)
    }

    method totalSueldos() {
        listaDeEmpleados.sum({empleado => empleado.calcularSueldo()})
    }

    method empleadoMayorSueldo () {
        listaDeEmpleados.max({empleado => empleado.calcularSueldo()})
    }
}

// sistema de vehiculos 

class Vehiculo {
    const marca
    const modelo
    const motor 

    method costoDeViaje(distancia, precioLitro) {
        return motor.calcularCosto (distancia, precioLitro)
    }
}

class Motor {
    const consumoPor100km 

    method calcularConsumo(distancia) {
        return (distancia/100) *  consumoPor100km 
    }

    method calcularCosto (distancia, precioLitro) {
        return self.calcularConsumo (distancia) * precioLitro
    }
    
}   


class MotorNafta inherits Motor {   
}

class MotorDiesel inherits Motor {
}

class MotorElectrico inherits Motor {
    
    override method calcularCosto (distancia, precioLitro) {
        return 0
    }
    
}

class Agencia {
    const vehiculos = []

    method recomendarVehiculo(distancia, precioLitro) {
        return vehiculos.min({vehiculo => vehiculo.costoDeViaje(distancia, precioLitro)})
    }
}


//streaming de musica

class Cancion {
    const titulo
    const artista
    const duracion
    var reproducciones = 0

    method reproducir () {
        return reproducciones += 1
    }

    method esExitosa () {
        return reproducciones > 1000000
    }

    method duracion () {
        return duracion
    }
}

class Podcast {
    const titulo
    const creador
    const duracion
    const episodio
    var reproducciones = 0

     method reproducir () {
        return reproducciones += 1
    }

    override method esExitosa () {
        return reproducciones > 50000
    }

    method duracion () {
        return duracion git 
    }
}

class Usuario {
    const nombre
    const plan
    const historial = []

    method reproducir (contenido) {

    }

    method tiempoTotalEscuchado () {

    }
    
    method contenidoFavorito ()  {

    }
}

class Plan {
     method puedeReproducir (contenido, usuario) {
        
    }
}

object planGratuito inherits Plan{
    override method puedeReproducir (contenido,usuario) {
        usuario.puedeReproducir(cancion)
    }
}

object planBasico inherits Plan{

}

object planPremium inherits Plan{

}

class Plataforma {
    const usuarios = []
    const contenido = []

    method agregarUsuario (usuario) {
        usuarios.add(usuario)
    }

    method agregarContenido (contenido) {
        contenido.add(contenido)
    } 

    method top10Contenido() {

    }

    method usuarioMasActivo () {

    }

    method contenidoMasPopularDe (artista)
}







