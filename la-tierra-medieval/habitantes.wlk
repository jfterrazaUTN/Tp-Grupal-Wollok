import armas.baculo
import armas.glamdring
import armas.espadaEnana

object gandalf {
  var vida = 100 
  var armas = #{baculo, glamdring} 

  method vida(unaCantidad) {//nivel de vida que es entre 0 y 100
    vida = unaCantidad
  }

  method armas() = armas

  method quitarArmas() {
    armas = #{}
  }

  method equipar(unArma) {
    armas += #{unArma}
  }

  method vida() = vida 

  method poder() {
    if (vida > 9)
    return vida * 15 + (self.poderDeArmas() * 2)
    else 
    return vida * 300 + (self.poderDeArmas() * 2)
  }

  method poderDeArmas() = armas.sum({arma => arma.poder()}) 

  method puedeAtravesarLebennin() = self.poder() > 1500 
  method puedeAtravesarMinasTirith() = not armas.isEmpty()
  method puedeAtraversarLossarnach() = true
  method puedeAtravesarCaminoDeGondor() = self.puedeAtravesarLebennin() && self.puedeAtravesarMinasTirith()

  method recorrerMinasTirith() {
    vida -= 10
  }

  method recorrerLebennin() {
    
  }

  method recorrerLossrnach() {
    vida += 1
  }

  method recorrerCaminoDeGondor() {
    self.recorrerLebennin()
    self.recorrerMinasTirith()
  }
}

object tomBombadil {
  method puedeAtravesar() = true
  method puedeAtravesarLebennin() = true
  method puedeAtravesarLossrnach() = true
  method puedeAtravesarCaminoDeGondor() = true

  method recorrerMinasTirith() {
    
  }
  method recorrerLebennin() {
    
  }
  method recorrerLossrnach() {
    
  }
  method recorrerCaminoDeGondor() {
    self.recorrerLebennin()
    self.recorrerMinasTirith()
  }
}