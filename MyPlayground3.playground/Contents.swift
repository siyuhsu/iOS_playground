import UIKit

//var str = "Hello, playground"
//
//let minValue = UInt8.min
//let maxValue = UInt.max
//
//let anotherPi = 3 + 0.14159

//let decimalInteger = 17
//let binaryInteger = 0b10001       // 二进制的17
//let octalInteger = 0o21           // 八进制的17
//let hexadecimalInteger = 0x11     // 十六机制的17

//let test1 = 1.25e2
//let test2 = 1.25e-2
//let test3 = 0xFp-2
//
//let decimalDouble = 12.1875
//let exponentDouble = 1.21875e1
//let hexadecimalDouble = 0xC.3p0

//let twoThousand: UInt16 = 2000
//let one: UInt8 = 1
//let twoThousandAndOne = twoThousand + UInt16(one)

//let three = 3
//let pointOneFourOneFiveNine = 0.14159
//let pi = Double(three) + pointOneFourOneFiveNine
//let integerPi = Int(pi)

//typealias AudioSample = UInt16
//var maxAmplitudeFound = AudioSample.min
//// maxAmplitudeFound 现在是 0
//
//let possibleNumber = "123"
//let convertedNumber = Int(possibleNumber)

//var serverResponseCode: Int? = 404
//serverResponseCode = nil
//
//var surveyAnswer: String?

//let possibleString: String? = "An optional string."
//print(possibleString!) // 需要惊叹号来获取值
//
//let assumedString: String! = "An implicitly unwrapped optional string."
//print(assumedString ?? "default value")  // 不需要惊叹号
//
//let wiseWords = "\"我是要成为海贼王的男人\" - 路飞"
//// "我是要成为海贼王的男人" - 路飞
//let dollarSign = "\u{24}"                // $,  Unicode 标量 U+0024
//let blackHeart = "\u{2665}"              // ♥,  Unicode 标量 U+2665
//let sparklingHeart = "\u{0001F496}"    // 💖, Unicode 标量 U+1F496

//var anotherEmptyString = String()  // 初始化 String 实例
//if anotherEmptyString.isEmpty {
//    print("什么都没有")
//}
//// 输出 "什么都没有"
//
//var variableString = "Horse"
//variableString += " and carriage"
//// variableString 现在为 "Horse and carriage"
//let constantString = "Highlander"
//constantString += " and another Highlander"
//// 这会报告一个编译错误 (compile-time error) - 常量不可以被修改。
//for character in "Dog!🐶" {
//    print(character)
//}
//
//let yenSign: Character = "¥"
//let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
//print("unusualMenagerie has \(unusualMenagerie.count) characters")
//// prints "unusualMenagerie has 40 characters"

//let string1 = "hello"
//let string2 = " there"
//let character1: Character = "!"
//let character2: Character = "?"
//
//let stringPlusCharacter = string1 + String(character1) // 等于 "hello!"
//let stringPlusString = string1 + string2              // 等于 "hello there"
//let characterPlusString = String(character1) + string1        // 等于 "!hello"

//var instruction = "look over"
//let character1: Character = "!"
//let string2 = " there"
//instruction += string2
//// instruction 现在等于 "look over there"
//
//var welcome = "good morning"
//welcome += String(character1)
//// welcome 现在等于 "good morning!"

//let multiplier = 3
//let message = "\(multiplier) 乘以 2.5 是 \(Double(multiplier) * 2.5)"

//let quotation = "我们是一样一样滴."
//let sameQuotation = "我们是一样一样滴."
//if quotation == sameQuotation {
//    print("这两个字符串被认为是相同的")
//}

//数组
//let romeoAndJuliet = [
//    "Act 1 Scene 1: Verona, A public place",
//    "Act 1 Scene 2: Capulet's mansion",
//    "Act 1 Scene 3: A room in Capulet's mansion",
//    "Act 1 Scene 4: A street outside Capulet's mansion",
//    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
//    "Act 2 Scene 1: Outside Capulet's mansion",
//    "Act 2 Scene 2: Capulet's orchard",
//    "Act 2 Scene 3: Outside Friar Lawrence's cell",
//    "Act 2 Scene 4: A street in Verona",
//    "Act 2 Scene 5: Capulet's mansion",
//    "Act 2 Scene 6: Friar Lawrence's cell"
//]
//var act1SceneCount = 0
//for scene in romeoAndJuliet {
//    if scene.hasPrefix("Act 1 ") {
//        act1SceneCount+=1
//    }
//}
//print("There are \(act1SceneCount) scenes in Act 1")
// prints "There are 5 scenes in Act 1"

let normal = "Could you help me, please?"
let shouty = normal.uppercased()
// shouty 值为 "COULD YOU HELP ME, PLEASE?"
let whispered = normal.lowercased()
// whispered 值为 "could you help me, please?"
