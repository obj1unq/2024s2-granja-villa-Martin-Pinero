import cultivos.*

object granja {
    const property cultivos = #{}

    method agregarACultivos(planta){
        cultivos.add(planta)
    }

    method cultivoAca(posicion){
        return cultivos.find({cultivo => cultivo.position() == posicion})
    }

    method hayCultivoAca(posicion){
        return cultivos.any({cultivo => cultivo.position() == posicion})
    }
}