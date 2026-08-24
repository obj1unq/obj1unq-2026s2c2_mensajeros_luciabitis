
object paquete {
	var valor = null

	var destino = null

	var pagado = false

    var mensajero = null

	method destino_(destinoElejido) {
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

	method mensajero_(mensajeroElejido){
		mensajero = mensajeroElejido
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
    
    var credito = false

    const peso = 0

	method puedeLlamar(){
		return if (! self.credito()) false else llamada
	}

    method credito(){
		return credito
	}

	method acreditar(){
        credito = true
	}

	method peso(){
		return peso
	}
}

object sara {

	const llamada = false

	var transporte = null

    var peso = null

	var pesoPropio = 60

	method puedeLLamar(){
		return llamada
	}

	method peso(){
		return peso
	}

    method transporte_(transporteElejido){
	 transporte = transporteElejido
	 peso = pesoPropio + transporteElejido.peso()
}
}


object moto {
  
	const peso = 100

	method peso(){
		return peso
	}
}


object camion {
  
	const peso = 1000

	method peso(){
		return peso
	}
}