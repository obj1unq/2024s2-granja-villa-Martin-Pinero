import wollok.game.*
import granja.*
import direcciones.*

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
	var property evolucion = 0

	method image(){
		return "wheat_" + evolucion + ".png"
	}

	method sembrar(posicion){
		self.position(posicion)
	}

	method regar(){
		evolucion = (evolucion + 1) % 4
	}

}

class Tomaco {
	var property position = null

	method image(){
		return "tomaco.png"
	}

	method sembrar(posicion){
		self.position(posicion)
	}

	method regar(){
		self.validarSubir()
		position = game.at(position.x(), (game.height()-1).min(position.y() +1) )
	}

	method validarSubir(){
		if (granja.cultivoAca(arriba.siguiente(self.position())).isEmpty()){

		}

	}

}