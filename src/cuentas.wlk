object cuentaCorriente{
	var saldo = 0
	
	
	method depositar(importe){saldo += importe}
	
	method extraer(importe){saldo -= importe}
	
	method saldo(){return saldo}	
	
}
object cuentaConGastos{
		var saldo = 0
	
	
	method depositar(importe){saldo += importe}
	
	method extraer(importe){saldo -= importe}
	
	method saldo(){return saldo}
}
object cuentCombinada{
		var property cuentaPrimaria
		var property cuentaSecundaria
	
	method depositar(importe){}
	
	method extraer(importe){}
	
	method saldo(){return cuentaPrimaria.saldo() + cuentaSecundaria.saldo()}
}