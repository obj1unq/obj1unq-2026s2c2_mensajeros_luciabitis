
object paquete {
	var valor = null

	var destino = null

	var pagado = false

    var mensajero = null

	method destino(destinoElejido) {
		destino = destinoElejido
		valor = destinoElejido.valorDeDestino()
	}

	method valor(){
		return valor
	}

	method pagar(){
		pagado = true
	}

	method pagado(){
		return pagado
	}

	method mensajero(_mensajero){
		mensajero = _mensajero
	}

	method mensajero(){
		return mensajero
	}

	method puedeSerEntregado(){
		return destino.cumpleRequisitos(mensajero) && self.pagado()
	}

}

object matrix{

	const valor = 500

	method valorDeDestino(){
		return valor
	}

    method cumpleRequisitos(mensajero){
		return mensajero.peso() < 1000 
	}

}

object brooklyn {

	const valor = 150

	method valorDeDestino(){
		return valor
	}
	 
	method cumpleRequisitos(mensajero){
		return mensajero.puedeLlamar()
	}

}

object jean {

	const llamada = true

    const peso = 65

	method puedeLlamar(){
		return llamada
	}

	method peso(){
		return peso
	}
}

object neo {

	var llamada = false
    
    //var credito = false

    const peso = 0

	method puedeLlamar(){
		return llamada    //if (self.credito()) true else llamada
	}

    //method credito(){
	//	return credito
	//}

	method acreditar(){
        //credito = true
		llamada = true
	}

	method peso(){
		return peso
	}
}

object sara {

	const llamada = false

	var transporte = null

    var peso = null

	var pesoPropio = 70

	method puedeLLamar(){
		return llamada
	}

	method peso(){
		return peso
	}

    method transporte(transporteElejido){
	 transporte = transporteElejido
	 peso = pesoPropio + transporteElejido.peso()
    }
   
    method pesoDeSara(peso) {
	  pesoPropio = peso
	}
}


object moto {
  
	const peso = 100

	method pesoDeTransporte(){
		return peso
	}
}


object camion {
  
	const peso = 1000

	method pesoDeTransporte(){
		return peso
	}
}