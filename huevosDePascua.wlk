



object huevoRepostero {
    method esDeChocolateBlanco() = true
    method esDeChocolateAmargo() = false
    method calorias() = 750
}

object huevoMixto {
    method caloriasChocolateBlanco() = 500
    method caloriasChocolateLeche() = 400
    method calorias() = self.caloriasChocolateBlanco() + self.caloriasChocolateLeche()
    method esDeChocolateBlanco() = true
    method esDeChocolateAmargo() = false
}

object conejo {
    var property peso = 10 // me da getter and setter de peso
    
    method calorias() = peso * 10 // self.peso() * 10 esto me trae el metod peso y lo multiplica
    method esDeChocolateBlanco() = false
    method esDeChocolateAmargo() = true

    /*
    var peso = 10
    method peso(unValor){peso = unValor} 
    */
    
}

object blisterHuevitos {
    var property huevitos = 3
    method calorias() = huevitos * 100 + huevitos.div(5) * 150 // por que la barra da con decimales si uso // entonces uso div
    method esDeChocolateBlanco() = huevitos >= 5 //aca devuelve booleano y con eso ya se si es de chocolateblanco o no
    method esDeChocolateAmargo() = false
}

object matrioshka {
    var property huevoEnSuInterior = huevoMixto
    var property decoracion = flor

    method calorias() = 3000  + huevoEnSuInterior.calorias() + decoracion.calorias()
    method esDeChocolateBlanco() = huevoEnSuInterior.esDeChocolateBlanco()
    method esDeChocolateAmargo() = true
}

object flor{
    var property petalos = 5
    method caloriasDecoracion() = petalos  * 100
}
object arbol{
    method caloriasDecoracion() = 150

}

