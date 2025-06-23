object frutilla {
  
}

object chocolate {
  
}

class Bombon {
  var peso = 100
  
  method peso() = peso
  
  method precio() = 5
  
  method sabor() = frutilla
  
  method esLibreDeGluten() = true
  
  method pesoActual() = peso
  
  method mordisco() {
    peso -= (peso * 0.2) + 1
  }
}

class Alfajor {
  var peso = 300
  
  method peso() = peso
  
  method precio() = 12
  
  method sabor() = chocolate
  
  method esLibreDeGluten() = false
  
  method mordisco() {
    peso -= peso * 0.2
  }
}