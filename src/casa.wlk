import cosas.* 

object casaDePepeYJulian {
	const cosas = []
	
	
	method comprar(cosa){cosas.add(cosa)}
	
	method cantidadDeCosasCompradas(){return cosas.size()}
	
	method tieneComida(){return cosas.last({objeto => objeto.esComida()})}
	
	method vieneDeEquiparse(){return cosas.last().esElectrodomestico() or cosas.last().precio() > 5000}
	
	method esDerrochona(){return cosas.sum() >= 9000}
	
	method compraMasCara(){}
	
	method electrodomesticosComprados(){}
	
	method malaEpoca(){}
	
	method queFaltaComprar(lista){}

	method faltaComida(){}
	
	
}


