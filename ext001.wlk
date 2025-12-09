//gestion basica

class Persona {
    const nombre = ""
    var edad = n
    var direccion = ""
    
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

//figuras geometricas

class Figura {
    var area
    var perimetro 
    method calcularArea()
    method calcularPerimetro()
}

class Circulo inherits Figura {
    const pi
    var area
    var perimetro
    var radio


    method radio (nuevoRadio) {
        radio = nuevoRadio
    }

    override method calcularArea() {
        area = pi * radio.sqrt()
    }

    override method calcularPerimetro() {
        perimetro = 2 * pi * radio
    }
}
class Triangulo inherits Figura {
    var area
    var perimetro
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
    var area
    var perimetro
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

