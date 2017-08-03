//Collections - Array, Dictionary, Set(중요하지만 자주 쓰진 않음)

var todo: [String] = ["시장보기", "과제하기", "로고만들기"]
//Array에 추가하고 싶은 것이 있다면?
todo.append("밥먹기")

todo += ["강의듣기", "잠자기"]

let tasks = ["운동하기"]

//tasks.append("발표준기하기")

//index
//Subscript 문법
let firstTodo = todo[0]
let thirdTodo = todo[2]

todo[4] = "강의복습하기"

// 배열 중간에 내용 입력하기
todo.insert("빨래하기", at: 2)

// 배열 삭제
todo.remove(at: 2)
// 배열 숫자 확인
todo.count

//Dictionary

/*
 Airport Code       Airport Name
 INC                Incheon
 GMP                Gimpo
 HKG                Hong Kong International
 SFO                San Francisco International
 LHR                Heathrow
*/
// Dictionary는 Array 처럼 순서가 일정하게 들어가지 않음. 즉, 저장 순서가 의미가 없을때만 사용할 것.
var airportCodes: [String : String] = [
    "INC" : "Inchoen",
    "GMP" : "Gimpo",
    "HKG" : "Hong Kong International",
    "SFO" : "San Francisco International",
    "LHR" : "Hearthrow"]

//Reading
let airportName = airportCodes["INC"]

//Inserting
airportCodes["SYD"] = "Sydney"
airportCodes["GMP"] = "Gimpo International"
airportCodes.updateValue("Gimpo", forKey: "GMP")

//Removing
airportCodes["SYD"] = nil
airportCodes.removeValue(forKey: "LHR")
airportCodes























