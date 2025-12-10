// ----------------
//gestion basica
// ----------------
class Persona {
    const nombre 
    var edad 
    var direccion
    
    //GETTERS 
    method nombre() = nombre
    method edad() = edad
    method direccion() = direccion

    //SETTERS
    method edad(nuevaEdad) {
    edad = nuevaEdad
    }

    method direccion(nuevaDir) {
    direccion = nuevaDir
    }

}

class Empleado inherits Persona {
    var salario 
}

class Estudiante inherits Persona {
    var carrera 
}

// ----------------
//figuras geometricas
// ----------------

class Figura {
    var area
    var perimetro 
    method calcularArea()
    method calcularPerimetro()

    method area (newArea) {
    area = newArea
    }

    method perimetro (newPerimetro) {
    perimetro = newPerimetro
    }
}

class Circulo inherits Figura {
    const pi
    var radio


    method radio (nuevoRadio) {
        radio = nuevoRadio
    }

    override method calcularArea() {
        area = pi * radio * radio
    }

    override method calcularPerimetro() {
        perimetro = 2 * pi * radio
    }
}
class Triangulo inherits Figura {
    var base
    var altura
    var lado


    method base(newBase) {
        base = newBase
    }

    method altura (newAltura) {
        altura = newAltura
    }

    method lado (newLado) {
        lado = newLado
    }

    override method calcularArea() {
        area = (base*altura)/2
    }

    override method calcularPerimetro() {
         perimetro = base + 2*lado    
    }
}

class Rectangulo inherits Figura {
    var base
    var altura

    method base (newBase) {
        base = newBase
    }

    method altura (newAltura) {
        altura = newAltura
    }

    override method calcularArea() {
        area = base * altura
    }

    override method calcularPerimetro() {
        perimetro = 2*base + 2*altura
    }

}

object demoPoli {
const circulo = new Circulo (radio = 5, pi = 3.14)
const triangulo = new Triangulo (base = 3,altura=4,lado=5)
const rectangulo = new Rectangulo (base = 4, altura = 6)

const misFiguras = [circulo, triangulo, rectangulo]
}

// ----------------
//simulacion biblio
// ----------------
class Libro {
    const titulo
    const ISBN
    const autor = new Autor(nombre = "Desconocido", nacionalidad = "Desconocida")
}

class Autor {
    const nombre
    const nacionalidad
}

class Biblioteca {
    var libros = []

    method agregarLibro(nuevoLibro) {
        libros = libros + [nuevoLibro]
    }

    method buscarLibro(libroBuscado) {
        libros.filter(l => l.ISBN == libroBuscado.ISBN)

    }
}

// ----------------
//sistema de cuentas bancarias
// ----------------
class CuentaBancaria {
    var saldo = 0

    method depositar(monto) {
        saldo = saldo + monto
    }

    method depositar (monto, descripcion){
        //saldo = saldo + monto
    }

    method retirar(monto) {

    }
}
