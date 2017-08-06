//Inheritance
//Subclass <- Superclass
//Overriding

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "Traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        
    }
}

let someVehicle = Vehicle()
print(someVehicle.description)

class Bicycle: Vehicle {
    var hasBasket = false
    
}

let bicycle = Bicycle()
bicycle.currentSpeed
bicycle.description
bicycle.hasBasket

class Tandem: Bicycle {
    var numberOfPassengers = 0
    
}

let tandom = Tandem()
tandom.currentSpeed
tandom.description
tandom.makeNoise()
tandom.hasBasket
tandom.numberOfPassengers


class Train: Vehicle {
    override func makeNoise() {
        print("칙칙폭폭")
    }
}
let train = Train()
train.makeNoise()

class Car: Vehicle {
    var gear = 1
    override var description: String{
        return super.description + " in gear \(gear)"
    }
}

let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print(car.description)









