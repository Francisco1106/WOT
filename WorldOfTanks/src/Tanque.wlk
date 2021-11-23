import Misiles.*
class Tanque {
	var property tripulantes
	var property coraza
	var property misiles = []
	
	method emiteCalor(){
		return tripulantes > 5
	}
	
	method atacarTanque(unTanque){
		const misilDeAtaque = misiles.anyOne()
		misilDeAtaque.daniarTanque(unTanque)
		self.gastarMisil(misilDeAtaque)
	}
	
	method recibirDanio(danio){
		coraza -= danio
	}
	method gastarMisil(unMisil){
		misiles = misiles.filter{misil => misil != unMisil}
	}
	method misilesRestantes(){
		return misiles
	}
	method estaVivo(){
		return coraza > 0
	}
	method tieneArmamento(){
		return misiles.size()> 0
	}
	method atacarUnidad(unidad){
		const tanqueAtacado = unidad.tanquesVivos().anyOne()
		self.atacarTanque(tanqueAtacado)
	}
	method destruccionInstantanea(){
		coraza = 0
	}
	
}
class Blindado inherits Tanque{
	var property blindaje
	
	override method recibirDanio(danio){
			super(blindaje-danio)
	}
	method gastarBlindaje(){
		if(self.blindaje()>0){
			blindaje -= 1
		}else{
		self.error("¡Ya no tengo chaleco!")
		}
	}
	override method atacarTanque(unTanque){
		super(unTanque)
		self.gastarBlindaje()
	}
}
const tanque22= new Tanque(tripulantes = 2, coraza = 500, misiles = [misil1, misil2])

