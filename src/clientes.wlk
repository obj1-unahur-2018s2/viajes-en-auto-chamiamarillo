object ludmila{
	method precioPactadoPorKm(){
		return 18	
	}
}

object anaMaria{
	method precioPactadoPorKm(){
		return 30	
	}
}

object teresa{
	method precioPactadoPorKm(){
		return 22	
	}
}

object melina{
	var _paraCliente = null
	
	method trabajaPara(cliente){
		_paraCliente = cliente
	}
	
	method precioPactadoPorKm(){
		return (_paraCliente.precioPactadoPorKm()) - 3
	}
}
