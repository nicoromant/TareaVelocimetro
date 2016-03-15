// TAREA VELOCIMETRO

import Cocoa

enum Velocidad : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init(velocidadInicial : Velocidad) {
        self = .Apagado
    }
}

class Auto {
    var velocidad : Velocidad
    init(velocidad : Velocidad) {
        self.velocidad = .Apagado
    }
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String) {
        if velocidad == .Apagado {
            print("\(velocidad.rawValue), \(velocidad)")
            velocidad = .VelocidadBaja
        } else {
            switch (velocidad) {
            case .VelocidadBaja:
                velocidad = .VelocidadMedia
            case .VelocidadMedia:
                velocidad = .VelocidadAlta
            case .VelocidadAlta:
                velocidad = .VelocidadMedia
            default:
                velocidad = .Apagado
            }
        }
    return (velocidad.rawValue, "\(velocidad)")
    }
}

var auto = Auto(velocidad: .Apagado)

for n in 1...20 {
    auto.cambioDeVelocidad()
    print("\(auto.velocidad.rawValue), \(auto.velocidad)")
}
