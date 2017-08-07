//Optional Type

let possibleNumber = "123"

let convertedNumber = Int(possibleNumber)

if convertedNumber != nil {
    print("converted number is \(convertedNumber!)")
}


//Optional Binding

if let actualNumber = convertedNumber {
    print("actual number is \(actualNumber)")
} else{
    print("actual number does not exist")
}

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("first number is \(firstNumber), second number is \(secondNumber)")
}

//Optional Chaining - 중요
class Person {
    var residence: Residence?
    
}

class Residence {
    var numberOfRooms = 1
}
// !이 아닌 ?를 써야함. 주의할 것
let philip = Person()
philip.residence = Residence()
if let roomCount = philip.residence?.numberOfRooms{
    print("Philip's residence has \(roomCount) room")
} else {
    print("Unable to retrieve the number of rooms")
}







