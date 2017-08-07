//Initialization

class Fahrenheit {
    var temperature: Double
    
    init() {
        temperature = 32.0
    }
}

let f = Fahrenheit()
f.temperature

class Celsius {
    var temperature: Double
    
    init(fromFarenheit fahrenheit: Double) {
        temperature = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        temperature = kelvin - 273.15
    }
    init(_ celsius: Double) {
        temperature = celsius
    }
}

let boilingTempOfWater = Celsius(fromFarenheit: 212.0)
boilingTempOfWater.temperature

let celsius = Celsius(50)



class RGBColor {
    let red: Double
    let green: Double
    let blue: Double
    let alpha: Double
    
    var description: String
    
    init(red: Double, green: Double, blue: Double, alpha: Double) {
        self.red = 0.0
        self.green = 0.0
        self.blue = 0.0
        self.alpha = 0.0
        self.description = "red: \(red), green: \(green), blue: \(blue), alpha: \(alpha)"
    }
}
let color = RGBColor(red: 14.0, green: 26.0, blue: 24.0, alpha: 30.0)




