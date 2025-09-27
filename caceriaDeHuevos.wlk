import chicos.*
import huevosDePascua.*

object caceria {
    const huevosEncontrados = []
    const huevosNoEncontrados = []
    method inicializarJuego() {
        flor.petalos(7)
        matrioshka.decoracion(flor)
        matrioshka.huevoEnSuInterior(blisterHuevitos)
        blisterHuevitos.huevitos(14)
        
        huevosEncontrados.addAll([matrioshka,huevoRepostero,conejo,huevoMixto])
    }
    method cantidadPorEncontrar() = huevosNoEncontrados.size()
    method cuantosConChocoBlanco() = huevosNoEncontrados.count({h => h.esdeChocolateBlanco()})
    method aunNoFueEncontrado(unHuevo) = huevosNoEncontrados.contains(unHuevo)
    method encontrarUnHuevoPor(unChico, unHuevo){
        unChico.comer(unHuevo)
        huevosNoEncontrados.remove(unHuevo)
        huevosEncontrados.add(unHuevo)
    }
    method encontrarPrimerHuevo(unChico) {
        self.encontrarUnHuevoPor(unChico, huevosNoEncontrados.first())
    }

    method encontrarLosRestantes(unChico){
        huevosNoEncontrados.forEach({h=> self.encontrarUnHuevoPor(unChico, h)})
    }

    method huevosNoEncontradosBlancos() = huevosNoEncontrados.filter({h => h.esDeChocolateBlanco()})
    method noEncontradoDeMayorCalorias() = huevosNoEncontrados.max({h => h.calorias()})// el max me trae al OBJETO con mayor caloria// si quisiera saber la caloria tengo que agregarle a este objeto encontrado(al codigo).caloria



}