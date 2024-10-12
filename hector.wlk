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
		if (self.estaOcupadoAca()){
			self.error("esta parcela está ocupada")
		}
	}

	method estaOcupadoAca(){
		return granja.cultivos().any({cultivo => cultivo.position() == self.position()})
	}

	method mover(direccion){
		position = direccion.siguiente(self.position())
	}
}
