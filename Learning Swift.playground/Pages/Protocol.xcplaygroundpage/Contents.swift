// Protocol
// 특정 작업에 필요한 메서드나 프로퍼티를 요구사항으로 정의
// 구현?
protocol SomeProtocol {
    var mustBeSettable: Int { get set }
    func MustBeImplemented()
}

protocol SomeOtherProtocol {
    
}

class SomeSuperclass {
    
}


class SomeClass: SomeSuperclass, SomeProtocol, SomeOtherProtocol {
    var mustBeSettable: Int = 10
    
    func MustBeImplemented() {
        print("method implemented by some class")
    }
    
}
