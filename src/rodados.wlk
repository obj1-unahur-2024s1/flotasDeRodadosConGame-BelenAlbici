class Corsa {
	const property capacidad=4
	const property velocidadMax=150
	var property color
	const property peso=1300
	
}


class Kwid{
	var property capacidad
	var property velocidadMax
	const property color = "azul"
	var property peso
	var property gas= false
	
	method capacidad(){
		return if (not gas) {capacidad=4} else {capacidad=3}
	}
	
	method velocidadMax(){
		return if (not gas){120} else {110}
	}
	
	method peso(){
		return if (not gas){1200} else {1200+150}
	}
	
}

object trafic{
	const property color= "blanco"
	var property peso=4000
	var interior = interiorComodo
	const capacidad = interior.capacidad()
	var motor= motorPolenta
	const  velocidadMax =motor.velocidadMax()
	
	
	 method capacidad(){
		return capacidad
	}
	
	
	method velocidadMax(){
		return velocidadMax
	}
	
	method peso(){
		return peso + interior.peso() + motor.peso() 
	}
	
	method cambiarInterior(nuevoInterior){
		interior = nuevoInterior
	}

	method cambiarMotor(nuevoMotor){
		motor = nuevoMotor
	}

}



object interiorComodo{
	const property capacidad = 5
	const property peso = 700
}
object interiorPopular{
	const property capacidad=12
	const property peso= 1000
}
object motorPolenta{
	const property velocidadMax=130
	const property peso= 80
}
object motorBataton{
	const property velocidadMax=80
	const property peso= 500
}











