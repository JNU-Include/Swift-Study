func calculateArea(width: Int, height: Int) -> Int {
    let area = width * height
    return area
}

func calculateWallpaperPrice(width: Int, height: Int, color: String = "beige") -> (price: Int, color: String) {
    var price: Int
    let area = calculateArea(width: width, height: height)
    switch color {
    case "beige": price = area * 10000
    case "gray": price = area * 15000
    case "pink": price = area * 20000
    default: price = 0
    }
    return (price, color)
}
// Wall # 1
let areaOfWall1 = calculateArea(width: 10, height: 20)

// Wall # 2
calculateArea(width: 20, height: 1)

let result = calculateWallpaperPrice(width: 20, height: 60)
result.price
result.color

//Hint : Double
// C = (F-32) * 5 / 9

func convertToCelsius(temperatureInFahrenheit temp : Double) -> Double {
    let temperatureInCelsius = (temp-32) * (5/9)
    return temperatureInCelsius
}

convertToCelsius(temperatureInFahrenheit: 80)


func sayHello(to person: String, and anotherPerson: String) -> String {
    return "Hello \(person) and \(anotherPerson)"
}

sayHello(to: "Jack", and: "Jenny")


//scope(?)

func incrementAndDecrement(a: Int){
    var a = a
    var b = a
    
    a += 1
    b -= 1
}

let a = 20
incrementAndDecrement(a: a)
a




