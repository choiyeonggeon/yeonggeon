//
//  main.swift
//  숫자 야구
//
//  Created by 최영건 on 3/19/25.
//

import Foundation

func generateRandomNumbers() -> [Int] {
    var numbers = [Int]()
    while numbers.count < 3 {
        let randomNumber = Int.random(in: 1...9)
        if !numbers.contains(randomNumber) {
            numbers.append(randomNumber)
        }
    }
    return numbers
}
func getUserInput() -> [Int]? {
    print("숫자 3개를 입력하세요: ", terminator: "")
    if let input = readLine(), input.count == 3 {
        let userInput = input.map { Int(String($0))! }
        return userInput
    } else {
        print("잘못된 입력입니다. 다시 시도해주세요.")
        return nil
    }
}
func calculateStrikeAndBall(userInput: [Int], computerNumbers: [Int]) -> (strike: Int, ball: Int) {
    var strike = 0
    var ball = 0

    for i in 0..<userInput.count {
        if userInput[i] == computerNumbers[i] {
            strike += 1
        } else if computerNumbers.contains(userInput[i]) {
            ball += 1
        }
    }

    return (strike, ball)
}
func startGame() {
    let computerNumbers = generateRandomNumbers()
    var userWon = false
    print("최영건의 야구 게임에 오신 것을 환영해요! 위 게임은 숫자 1~9를 조합하여, 세 개를 맞히면 끝나는 간단한 게임입니다. 행운을 빌어요!")
    
    while !userWon {
        if let userInput = getUserInput() {
            let (strike, ball) = calculateStrikeAndBall(userInput: userInput, computerNumbers: computerNumbers)
            print("\(strike) 스트라이크, \(ball) 볼")
            
            if strike == 3 {
                userWon = true
                print("축하합니다! 정답을 맞추셨습니다!")
            }
        }
           }
}

startGame()
