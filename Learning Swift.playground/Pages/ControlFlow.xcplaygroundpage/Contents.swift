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








