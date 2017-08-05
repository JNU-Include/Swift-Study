func calculateArea(width: Int, height: Int) -> Int {
    let area = width * height
    return area
}

// Wall # 1
let areaOfWall1 = calculateArea(width: 10, height: 20)

// Wall # 2
calculateArea(width: 20, height: 1)

//Hint : Double
// C = (F-32) * 5 / 9

func convertToCelsius(temperature : Double) -> Double {
    let temperatureInCelsius = (temperature-32) * (5/9)
    return temperatureInCelsius
}

convertToCelsius(temperature: 80)
