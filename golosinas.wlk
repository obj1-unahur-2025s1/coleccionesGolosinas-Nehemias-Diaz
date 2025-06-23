object frutilla {
  
}

object chocolate {
  
}

object naranja {
  
}

object vainilla {
  
}

class Bombon {
  var peso = 15
  
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

class Caramelo {
  var peso = 5
  
  method peso() = peso
  
  method precio() = 1
  
  method sabor() = frutilla
  
  method esLibreDeGluten() = true
  
  method mordisco() {
    peso -= 1
  }
}

class Chupetin {
  var peso = 7
  
  method precio() = 2
  
  method sabor() = naranja
  
  method esLibreDeGluten() = true
  
  method mordisco() {
    if (peso >= 2) {
      peso -= peso * 0.2
    }
  }
}

class Oblea {
  var peso = 250
  
  method peso() = peso
  
  method precio() = 5
  
  method sabor() = vainilla
  
  method esLibreDeGluten() = false
  
  method mordisco() {
    if (peso > 70) {
      peso /= 2
    } else {
      peso -= peso * 0.25
    }
  }
}

class Chocolatin {
  var pesoInicial
  var comido = 0
  
  method pesoInicial(unPeso) {
    pesoInicial = unPeso
  }
  
  method precio() = pesoInicial * 0.5
  
  method peso() = (pesoInicial - comido).max(0)
  
  method mordisco() {
    comido += 2
  }
  
  method sabor() = chocolate
  
  method esLibreDeGluten() = false
}

class GolosinaBaniada {
  var golosinaDentro
  var pesoBanio = 4
  
  method golosinaDentro(unaGolosina) {
    golosinaDentro = unaGolosina
  }
  
  method peso() = golosinaDentro.peso() + pesoBanio
  
  method precio() = golosinaDentro.precio() + 2
  
  method sabor() = golosinaDentro.sabor()
  
  method esLibreDeGluten() = golosinaDentro.esLibreDeGluten()
  
  method mordisco() {
    golosinaDentro.mordisco()
    pesoBanio = (pesoBanio - 2).max(0)
  }
}

class PastillaTuttiFrutti {
  var property esLibreDeGluten
  const sabores = [frutilla, chocolate, naranja]
  var saborActual = 0
  
  method peso() = 5
  
  method precio() {
    if (esLibreDeGluten) 7 else 10
  }
  
  method mordisco() {
    saborActual += 1
  }
  
  method sabor() = sabores.get(saborActual % 3)
}