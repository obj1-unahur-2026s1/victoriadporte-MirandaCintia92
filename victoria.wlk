

object victoria {
    var edad = 20  
    const altura = 170
    var disciplina = judo
    var entrenadores = 4

    method edad() = edad 
    method entrenadores(cantidadDeEntrenadores) {
        entrenadores = cantidadDeEntrenadores
    }
    method cumplirAnio() { //aumenta la edad 
        edad += 1
    }
    method disciplina(_nuevaDisciplina) {
        disciplina = _nuevaDisciplina
    }
    method presupuesto() = 
        self.presupuestoPropio() + disciplina.presupuestoPropio()
    
    method presupuestoPropio() = comiteOlimpico.costoEntrenamiento()  * entrenadores +(disciplina.costoPorElementoIndispensable(self))
}

object judo {
    var medallas = 3 

    const elementoIndispensable = chaqueta 
    method elementoIndispensable() = elementoIndispensable
    
    method costoPorElementoIndispensable(_atleta) { 50 * _atleta.altura()    
    }
    method presupuestoPropio () = 150 * medallas
    method ganarMedalla() {
        medallas += 1
    }


}

object tenis{
    var hinchas = 15
    const elementoIndispensable = raqueta

    method elementoIndispensable() = elementoIndispensable
    method costoPorElementoIndispensable(_atleta) { 100 * _atleta.edad().min(3000)    
    }
    method presupuetoPropio() = 200 +( 3* hinchas)
    method hinchas(unaCantidad) {hinchas = unaCantidad} 
}

object raqueta {}
object chaqueta {}

object hockey {
    //method presupuestoPropio() = 
    method costoPorElementoIndispensable() {
        
    }
}


object comiteOlimpico {
    var costo = 300
    method costoEntrenamiento() = costo

    method actualizarCosto(_nuevoCosto) {
        costo = _nuevoCosto
    
    }
}