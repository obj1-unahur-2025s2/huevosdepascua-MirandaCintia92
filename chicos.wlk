import huevosDePascua.*

object ana {
    const huevosComidos = []
    method comer(huevos){
        huevosComidos.add(unHuevo)
    }
    method estaEnfermo(){ 
        return 
        self.consumioMasDe5000() 
        || 
        hayAlgunoDeChocolateBlanco()
    }
    method consumioMasDe5000() = 
    method hayAlgunoDeChocolateBlanco() = huevosComidos.any({h => h.esDeChocolateBlanco()})

}

object jose {
    var ultimoHuevoComido = huevoMixto
    method comer(unHuevo){
        ultimoHuevoComido = unHuevo
    }
    method estaEnfermo() = ultimoHuevoComido.esDeChocolateAmargo()
}

object tito {
    method comer(unHuevo){}
    method estaEnfermo() = false
}