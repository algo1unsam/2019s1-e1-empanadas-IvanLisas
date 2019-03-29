object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
	
	var property sueldo = 15000
	
	var dinero = 0
	var deuda = 0

	method cobrarSueldo(){
		self.saldarDeuda()
	}
	
	method saldarDeuda(){
		if (self.totalDeuda()<self.sueldo()){
			dinero=self.sueldo()-self.totalDeuda()
			deuda=0
		}
		else{
			deuda-=self.sueldo()
		}
	}
	
	method gastar(dineroAgastar){
		if(dineroAgastar<=self.totalDinero()){
			dinero-=dineroAgastar
		}
		
		else {
			deuda += dineroAgastar - self.totalDinero()
			dinero =0
		}
	}
	
	method totalDeuda(){
		return deuda
	}
	method totalDinero(){
		return dinero
	}
}

object baigorria {
	
	
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var totalCobrado = 0
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() {
		return cantidadEmpanadasVendidas * montoPorEmpanada
	} 
	
	method totalCobrado(){
		totalCobrado += self.sueldo()
	}
	
	method cobrarSueldo(){
		self.totalCobrado()
	}
}

object galvan {
	var dinero = 300000
	
	method dinero() {
		return dinero
	}
	
	method pagarA( empleado ) {
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}
