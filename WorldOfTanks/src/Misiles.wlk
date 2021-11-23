import Tanque.*
class Misil {
	method daniarTanque(tanque)
	
}

class Bazooka inherits Misil{
	const cabezasNucleares
	
	override method daniarTanque(tanque){
		tanque.recibirDanio(2*cabezasNucleares)
	}
}

class Termico inherits Misil{
	const danioQueCausan
	override method daniarTanque(tanque){
		if(tanque.emiteCalor()){ 
			tanque.recibirDanio(danioQueCausan)
		}else{
			tanque.recibirDanio(0)
		}
	}
}

class Grosso inherits Misil{
	
	override method daniarTanque(tanque){
		 tanque.destruccionInstantanea()
	}
}


const misil1 = new Grosso()
const misil2 = new Bazooka(cabezasNucleares = 2)