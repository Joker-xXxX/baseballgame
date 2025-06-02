import Foundation

class BaseballGame {
    func start() {
        let answer = makeAnswer()
        print("생성된 정답: \(answer)")
    }

    func makeAnswer() -> [Int] {
        var numbers = Array(1...9).shuffled()
        return Array(numbers.prefix(3))
    }
}

// 레벨 1 완 -------------
