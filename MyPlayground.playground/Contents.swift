import UIKit

//var str = "Hello, playground"
//
//var myVariable = 42
//myVariable = 50
//let myConstant = 42
//
//let implicitInteger = 70
//let implicitDouble = 70.0
//let explicitDouble: Double = 70
//
//let apples = 3
//let oranges = 5
//let appleSummary = "I have \(apples) apples."
//let fruitSummary = "I have \(apples + oranges) pieces of fruit."

//var shoppingList = ["catfish", "water", "tulips", "blue paint"]
//shoppingList[1]
//shoppingList[1] = "bottle of water"
//
//var occupations = [
//    "Malcolm": "Captain",
//    "Kaylee": "Mechanic",
//]
//occupations["Malcolm"]
//occupations["Jayne"] = "Public Relations"
//occupations

//let individualScores = [75, 43, 103, 87, 12]
//var teamScore = 0
//for score in individualScores {
//    if score > 50 {
//        teamScore += 3
//    } else {
//        teamScore += 1
//    }
//}
//teamScore

//let vegetable = "watercress"
//switch vegetable {
//case "celery":
//    _ = "Add some raisins and make ants on a log."
//case "cucumber", "watercress":
//    _ = "That would make a good tea sandwich."
//case let x where x.hasSuffix("pepper"):
//    _ = "Is it a spicy \(x)?"
//default:
//    _ = "Everything tastes good in soup."
//}

//func greet(name: String, day: String) -> String {
//    return "Hello \(name), today is \(day)."
//}
//greet(name:"Bob", day:"Tuesday")
//函数也可以当做参数传入另一个函数
//func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
//    for item in list {
//        if condition(item) {
//            return true
//        }
//    }
//    return false
//}
//func lessThanTen(number: Int) -> Bool {
//    return number < 10
//}
//var numbers = [20, 19, 7, 12]
//hasAnyMatches(list:numbers, condition:lessThanTen)

class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

enum CompassPoint {
    case North
    case South
    case East
    case West
}

CompassPoint.North
