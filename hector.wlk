import wollok.game.*
import granja.*
import cultivos.*

object hector {

	var property position = game.center()
	const property image = "player.png"

	method sembrar(planta){
		self.validarSembrar()
		granja.agregarACultivos(planta)
		planta.sembrar(self.position())
		game.addVisual(planta)
	}

	method validarSembrar(){
		if (granja.hayCultivoAca(self.position())){
			self.error("esta parcela está ocupada")
		}
	}


	method mover(direccion){
		position = direccion.siguiente(self.position())
	}

	method regar(){
		self.validarRegar()
		granja.cultivoAca(self.position()).regar()

	}

	method validarRegar(){
		if (not granja.hayCultivoAca(self.position())){
			self.error("no tengo nada para regar")
		}
	}

	method cosechar(){
		self.validarCosechar()
		granja.cultivoAca(self.position()).cosechar()
		
	}

	method validarCosechar(){
		if (not granja.hayCultivoAca(self.position())){
			self.error("no tengo nada para cosechar")
		}
	}
}