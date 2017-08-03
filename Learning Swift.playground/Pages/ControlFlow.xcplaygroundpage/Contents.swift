var todo: [String] = ["시장보기", "과제하기", "로고만들기"]
todo.append("밥먹기")
todo += ["강의듣기", "잠자기"]



//for 반복문

for task in todo {
    print(task)
}
// 1부터 5까지
1...5
// 1부터 4까지
1..<5

for number in 1...10 {
    print("\(number) X 5 = \(number * 5)")
}

//While 반복문
var x = 0
while x <= 20 {
    print(x)
    x += 1
}

var index = 0
while index < todo.count {
    print(todo[index])
    index += 1
}

//Repeat-while 반복문
var counter = 1
repeat {
    print("Inside repeat while loop!")
} while counter < 1

while counter < 1 {
    print("Inside while loop!")
}

// If 조건문

var temperature = 14

if temperature < 12 {
    print("날씨가 많이 춥습니다. 자켓을 꺼내세요!")
} else if temperature < 17 {
    print("날씨가 춥습니다. 스웨터를 입는 것은 어떨까요?")
} else {
    print("날씨가 좋네요.")
}

// Logical Operator
3 < 2 && "a" == "a"

if temperature > 7 && temperature < 12 {
    print("자켓과 함께 스카프토 챙기세요.")
}

var isRaining: Bool = true
var isSnowing: Bool = false

if isRaining || isSnowing {
    print("부츠를 꺼내 신으세요.")
}

if !isRaining {
    print("해가 떴습니다.")
}

if isRaining && isSnowing && temperature < 2 {
    print("동상에 주의하세요.")
}

if (isRaining || isSnowing) && temperature < 2 {
    print("외출은 자제하세요")
}

// Switch

let airportCodes = ["LGA", "LHR", "CDG", "HKG", "DXB", "JFK", "LGW", "ORY"]

let airport = airportCodes[0]

for airportCode in airportCodes {
    switch airportCode {
    case "LGA", "JSK": print("New York")
    case "LHR", "LGW": print("London")
    case "CDG", "ORY": print("Paris")
    case "HKG": print("Hong Kong")
    default: print("알 수 없는 공항 코드 입니다.")
    }
}

import Foundation
//랜덤으로 숫자 추출
var randomTemperature = Int(arc4random_uniform(UInt32(80))) - 30

switch randomTemperature {
case -20..<0: print("엄청 춥습니다. 외출 자제하세요")
case 0..<10: print("손이 시려운 날씨입니다. 가급적 장갑을 껴주세요.")
case 10..<20: print("쌀쌀합니다. 스웨터를 입으세요.")
case 20..<40: print("덥네요. 티셔츠를 입으세요.")
default: print("이불 밖은 위험해요.")
}







