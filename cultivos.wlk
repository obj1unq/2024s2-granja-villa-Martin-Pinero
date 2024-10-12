import wollok.game.*

class Maiz {
	var property position = null
	var adultez = cornBaby

	method image() {
		// TODO: hacer que devuelva la imagen que corresponde
		return "corn_" + adultez.estado() + ".png"
	}

	method sembrar(posicion){ //posicion de hector
		self.position(posicion)

	}

	method regar(){
		adultez = cornAdult
	}

}

object cornBaby {

	method estado(){
		return "baby"
	}


}

object cornAdult {

	method estado(){
		return "adult"
	}
}

class Trigo {

	var property position = null
	var evolucion = 0

	method image(){
		return "wheat_" + evolucion + ".png"
	}

	method sembrar(posicion){
		self.position(posicion)
	}

}

class Tomaco {
	var property position = null

	method image(){

	}

	method sembrar(posicion){
		self.position(posicion)
	}

}