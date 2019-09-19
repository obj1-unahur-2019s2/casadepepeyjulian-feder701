import cosas.* 
import cuentas.*


object casaDePepeYJulian {
	const cosas = []
	var property cuentaQueEstaUsando
	
	method comprar(cosa){
		cosas.add(cosa)
		self.gastar(cosa.precio())
	}
	
	method cantidadDeCosasCompradas(){return cosas.size()}
	
	method tieneComida(){return cosas.any({objeto => objeto.esComida()})}
	
	method vieneDeEquiparse(){return cosas.last().esElectrodomestico() or cosas.last().precio() > 5000}
	
	method esDerrochona(){return cosas.sum() >= 9000}
	
	method compraMasCara(){return cosas.max({obj => obj.precio()})}
	
	method electrodomesticosComprados(){return cosas.filter({cosa => cosa.esElectrodomestico()})}
	
	method malaEpoca(){return cosas.all({obj => obj.esComida()})}
	
	method queFaltaComprar(lista){return lista.difference(cosas)}

	method faltaComida(){return cosas.filter({comidas => comidas.esComida() }).size() < 2}
	
	
//////////////////////////////////////////////////////////////////////////////////////////////////////////////
// PARTE 3
	
	method comidaComprada() = cosas.filter({cosa => cosa.esComida()})
	
	method gastoEnComida(){return cosas.filter({comida => comida.esComida()}).sum({comida => comida.precio() })}
	
	method hayElectrodomesticosBaratos(){return self.electrodomesticosComprados().any({cosa => cosa.precio() < 3000})
	}
	
	method preciosDeElectrodomesticos(){}
	
	method nivelEnAumento(){}
	
	method primerComidaComprada(){
		return self.comidaComprada().first()
	}
	
	
////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	method gastar(importe){
		cuentaQueEstaUsando.extraer(importe)
	}
	
	
	method dineroDisponible(){cuentaQueEstaUsando.saldo()}
	
	
}

