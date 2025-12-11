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
    const pi = 3.14159
    var radio

    method radio() = radio

    method radio (nuevoRadio) {
        radio = nuevoRadio
    }

    override method calcularArea() {
        return pi * radio * radio
    }

    override method calcularPerimetro() {
        return 2 * pi * radio
    }
}
class Triangulo inherits Figura {
    var base
    var altura
    var lado

    method base() = base
    method altura() = altura
    method lado() = lado


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
        return (base*altura)/2
    }

    override method calcularPerimetro() {
         return  base + 2*lado    
    }
}

class Rectangulo inherits Figura {
    var base
    var altura

    method base() = base
    method altura() = altura
    
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
const circulo = new Circulo (radio = 5)
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
