import clientes.*

object roxana {
	method precioViaje(cliente, kms) { 
		return cliente.precioPactadoPorKm() * kms
	}
}

object gabriela{
	method precioViaje(cliente,kms){
		return (cliente.precioPactadoPorKm() * kms) * 1.20
	}
}

object mariela{
	method precioViaje(cliente,kms){
		var contPeso = (cliente.precioPactadoPorKm() * kms) // porque es una variable temporal que solo se usa en este method
		if (contPeso>50){ return contPeso} else { return 50 }
		// otra opcion del if seria
		// return 50.min(cliente.precioPactadoPorKm() * Kms)
	}
}

object juana{
	method precioViaje(cliente,kms){
		if (kms<8) { return 100} else { return 200}
	}
}

object lucia{
	var choferReemplazado = null // uso la variable declarada en el objeto para que pueda recordar a quien reemplaza
	
	method reemplazaA(chofer){
		choferReemplazado = chofer
	}
	
	method precioViaje(cliente,kms){ 
		return choferReemplazado.precioViaje(cliente,kms)
	}
}