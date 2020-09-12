
object pepe {
	
	var property categoria = cadete
	var property cantidadFaltas = 0
	var property bonoPorPresentismo = bonoNulo
	var property bonoPorResultados = bonoPorcentajeSobreNeto
	
	method sueldo() = self.neto() + 
						bonoPorPresentismo.importe(self) + 
						bonoPorResultados.importe(self)
	
	method neto() = categoria.neto()
}

// Categorias

object cadete {
	const property neto = 1500
}

object gerente {
	const property neto = 1000
}


//Bonos por presentismo

object bonoPresentismo {
	
	method importe(empleado) {
		const cantidadFaltas = empleado.cantidadFaltas()
		
		if (cantidadFaltas == 0)
			return 100
		else if (cantidadFaltas == 1)
			return 50
		else
			return 0
	}
}


//Bonos por resultados

object bonoFijo {
	
	method importe(empleado) = 80
}

object bonoPorcentajeSobreNeto {
	
	method importe(empleado) = empleado.neto() * 0.1
}


object bonoNulo {
	
	method importe(empleado) = 0
}










