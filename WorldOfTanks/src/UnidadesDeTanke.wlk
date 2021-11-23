import Tanque.*
import Misiles.*
object unidadesDeTanke {
	var property tanques = []
	
	method tanquesVivos(){
		return tanques.filter{tanque => tanque.estaVivo()}
	}
	method tanquesArmados(){
		return tanques.filter{tanque=> tanque.estaVivo() && tanque.tieneArmamento()}
	}
	method atacarUnidad(unTanque){
		self.tanquesArmados().forEach{tanque => tanque.atacarTanque(unTanque)}
	}
}
