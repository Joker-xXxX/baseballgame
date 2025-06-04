import Foundation

class BaseballGame {
    func start() {
        let answer = makeAnswer()
        print("< 게임을 START! >")
        gameLoop(answer: answer)
    }

    func makeAnswer() -> [Int] {
        let numbers = Array(1...9).shuffled()
        return Array(numbers.prefix(3))
    }

    func gameLoop(answer: [Int]) {
        while true {
            print("⚾️3자리 숫자 추측하기!(0 제외):")
            guard let input = readLine(), validate(input) else {
                print("그렇게 하시면 안되요😂")
                continue
            }

            let guess = input.compactMap { Int(String($0)) }
            let (strike, ball) = check(guess: guess, answer: answer)

            if strike == 3 {
                print("딩동댕동~!👌🏻 ")
                break
            } else if strike == 0 && ball == 0 {
                print("오답입니다. 다시 도전해 보시죠😄")
            } else {
                print("\(strike)스트라이크! \(ball)볼!")
            }
        }
    }

    func validate(_ input: String) -> Bool {
        let digits = input.compactMap { Int(String($0)) }
        let unique = Set(digits)

        return input.count == 3 &&
               digits.count == 3 &&
               !digits.contains(0) &&
               unique.count == 3
    }


    func check(guess: [Int], answer: [Int]) -> (strike: Int, ball: Int) {
        var strike = 0
        var ball = 0

        for i in 0..<3 {
            if guess[i] == answer[i] {
                strike += 1
            } else if answer.contains(guess[i]) {
                ball += 1
            }
        }

        return (strike, ball)
    }
}
