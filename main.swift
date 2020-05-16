import Foundation
var streak: Int = 0
let answers = ["rock","paper","scissors"]
//who beats who - Rock>>Scissors>>Paper>>Rock
print("Hey!\nDo you wanna try to beat the random() function in Rock-Paper-Scissors game?\nI'll write down your streak!")
func play(){
    print("Rock, Paper, Scissors?")
    let random = answers.randomElement()
    let input = readLine()
    if input?.caseInsensitiveCompare(answers[0]) == .orderedSame {
        switch random {
        case answers[0]:
            print("Draw! Both random and you picked \(answers[0])!")
            print("Your streak still equals to \(streak).")
            play()
        case answers[1]:
            print("Defeat! You picked the \(answers[0]) and random() picked \(answers[1]).")
            streak = 0
            print("Your streak returned to \(streak).")
            play()
        case answers[2]:
            print("Win! You picked the \(answers[0]) and random() picked \(answers[2]).")
            streak += 1
            print("Your streak now equals to \(streak).")
            play()
        default:
            print("Something went wrong...")
        }
    } else if input?.caseInsensitiveCompare(answers[1]) == .orderedSame {
        switch random {
        case answers[1]:
            print("Draw! Both random and you picked \(answers[1])!")
            print("Your streak still equals to \(streak).")
            play()
        case answers[2]:
            print("Defeat! You picked the \(answers[1]) and random() picked \(answers[2]).")
            streak = 0
            print("Your streak returned to \(streak).")
            play()
        case answers[0]:
            print("Win! You picked the \(answers[1]) and random() picked \(answers[0]).")
            streak += 1
            print("Your streak now equals to \(streak).")
            play()
        default:
            print("Something went wrong...")
        }
    } else if input?.caseInsensitiveCompare(answers[2]) == .orderedSame {
        switch random {
        case answers[2]:
            print("Draw! Both random and you picked \(answers[2])!")
            print("Your streak still equals to \(streak).")
            play()
        case answers[0]:
            print("Defeat! You picked the \(answers[2]) and random() picked \(answers[0]).")
            streak = 0
            print("Your streak returned to \(streak).")
            play()
        case answers[1]:
            print("Win! You picked the \(answers[2]) and random() picked \(answers[1]).")
            streak += 1
            print("Your streak now equals to \(streak).")
            play()
        default:
            print("Something went wrong...")
        }
    } else {
        print("You input something strange... Try again.")
        play()
    }
}
play()
