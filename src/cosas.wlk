object heladera {
	method precio() { return 20000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 8000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 350 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 50 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 1200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}
object kiloDeMilanesasRebozadas{
	var precioKilo = 260
	
	method precio() { return precioKilo }
	method esComida() { return true }
	method esElectrodomestico() { return false }
		
	method nuevoPrecio(valorNuevo){precioKilo = valorNuevo}
}

object botellaSalsaDeTomate{
	var precioBotella = 90
	
	method precio() { return precioBotella }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
	method nuevoPrecio(nuevoPrecio){precioBotella = nuevoPrecio}
}

object microondas{
	method precio() { return 4200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object kiloDeCebollas{
	method precio() { return 25 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object dolar{
	method cotizacion(){return 56}

}

object unaCompu{
	
	method precio() { return 500 * dolar.cotizacion() }
	method esComida() { return false }
	method esElectrodomestico() { return true }	}
///////////////////////////////////////////////////////////
object packDeComida{
	var plato  
	var aderezo
	
	method precio() {return plato.precio() + aderezo.precio() }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object packDeRegalo{
	var componentes =[]
	
	
	method poner(comp){componentes.add(comp)}
	method precio() { return componentes.sum({comida => comida.precio()})* 0.8 }
	method esComida() { return componentes.all({comida => comida.esComida()}) }
	method esElectrodomestico() { return componentes.any({electrodomestico => electrodomestico.esElectrodomestico()}) }	
}

