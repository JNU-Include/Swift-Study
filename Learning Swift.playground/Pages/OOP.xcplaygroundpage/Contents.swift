//Object Oriented Programming
//Class, Structure

struct Resolution {
    var width = 5
    var height = 10
}

var resolution1 = Resolution()
resolution1.width
resolution1.height

var resolution2 = Resolution()
resolution2.height = 30
resolution2.width = 15


class VideoMode {
    var resolution = Resolution()
    var frameRate = 0.0
    var name = ""
}

let videoMode = VideoMode()
videoMode.frameRate
videoMode.name
videoMode.resolution.height

//Value Type vs Reference Type
let hd = Resolution(width: 1920, height: 1080)
var cinema = hd

cinema.width = 2048
hd.width
cinema.width

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let anotherTenEighty = tenEighty
anotherTenEighty.frameRate = 30
tenEighty.frameRate
anotherTenEighty.frameRate

//Stored Property - 값이 저장되어 있는.
struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue:0, length: 3)
rangeOfThreeItems.firstValue = 6

let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
//rangeOfFourItems.firstValue = 6


//Computed Property - 값을 저장하지 않고 매번 새로운 값을 계산
struct Point {
    var x = 0.0
    var y = 0.0
}
struct Size {
    var width = 0.0
    var height = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get{
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter){
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}

var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10, height: 10))
let initialCenter = square.center
square.center = Point(x: 15.0, y: 15.0)
square.origin

//Type Property - 인스턴스에 연관되지 않음.

class SomeClass {
    static var storedTypeProperty = "Some value"
    static var computedTypeProperty: Int {
        return 27
    }
}

SomeClass.storedTypeProperty
SomeClass.computedTypeProperty

//Property Observer - willSet didSet

class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set total steps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200
stepCounter.totalSteps = 360
stepCounter.totalSteps = 940

//Methods
class Counter {
    var count = 0
    
    func increment() {
        count += 1
    }
    
    func increment(by amount: Int){
        count += amount
    }
    func reset() {
        count = 0
    }
}


let counter = Counter()
counter.increment()
counter.count
counter.increment(by: 20)
counter.count
counter.reset()
counter.count


//Self property
struct Point2 {
    var x = 0.0
    var y = 0.0
    
    func isTotheRightOf(x: Double) -> Bool {
        return self.x > x
    }
}


//Type method

class SomeClass2 {
    static func someTypeMethod() {
        print("some type method")
    }
}
SomeClass2.someTypeMethod()















