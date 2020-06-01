import UIKit

//var str = "Hello, playground"
//var a:UInt8 = 0b1000 //十进制8 00001000
//a = ~a //变成 11110111
//var a:UInt8 = 0b00001000 //十进制8
//var b:UInt8 = 0b11110000
//a & b //结果变成 0b00000000 十进制 0
//a | b //结果变成 0b11111000 十进制 248
//a ^ b //结果变成 0b11111000 十进制 248
//a << 1 //结果变成 0b00010000十进制 16
//a >> 1 //结果变成 0b00000100十进制 4

//var a:UInt8 = 255
////a = a + 1 //编译器报错，超出最大值
////进行支持溢出加操作，a的值将变成0
//a = a &+ 1
////支持溢出减操作，a的值变成254
//a = a &- 1
////支持溢出乘操作，a的值变成254
//a = a &* 2
//func addFuncInt(_ param1:Int,_ param2:Int)->Int{
//    return param1 + param2
//}
//addFuncInt(1,2)//整型 符合 结果3
//
//addFuncInt(1.2,2.5)//浮点型 编译出差

//func addFuncDouble(_ param1:Double,_ param2:Double)->Double{
//    return param1 + param2
//}
//addFuncDouble(1,2)//整型 符合 结果3
//addFuncDouble(1.2,2.5)//整型 符合  结果3.7
//
//class Circle {
//    //圆心
//    var center: (Double,Double)
//    //半径
//    var radius:Double
//    init(center:(Double,Double),radius:Double) {
//        self.center = center
//        self.radius = radius
//    }
//}
////定义两个Circle实例进行相加操作运算为：返回一个新的Circle实例，圆心为第一个Circle圆心，半径为两个Circle实例半径和。
//func +(param1:Circle,param2:Circle) -> Circle{
//    return Circle(center: param1.center, radius: param2.radius+param2.radius)
//}

////进行自定义前缀运算符
//prefix operator ++ //prefix 声明前缀 ；infix中缀运算；postfix后缀运算
//prefix func ++(param:Int) ->Int{
//    return param + 1
//}
////自定义中缀运算
//infix operator ++
//func ++(param1:Int,param2:Int) ->Int{
//    return param1*param2 + param2*param2
//}
////自定义后缀运算符
//postfix operator ++
//postfix func ++(param1:Int) ->Int{
//    return param1 + param1
//}

//创建一个姓氏类型枚举
enum Surname{
    //使用case 进行枚举值的定义
    case 张
    case 王
    case 李
    case 赵
}
//也可以1个case子句中完成多个枚举定义
enum Surname1{
    //使用case 进行枚举值的定义
    case 张,王,李,赵
}
////创建一个姓氏枚举类型变量
//var sur:Surname
////对变量进行赋值
//sur = Surname.张
//sur = .张 //sur已经是明确的Surname枚举类型，枚举类型可以省略
//var sur:Surname
////对变量进行赋值
////对sur进行修改
//sur = .王
////对枚举类型的变量进行switch 选择结构
//switch sur {
//    case .张:
//        print("姓氏张")
//    case .王:
//    print("姓氏王")
//    case .李:
//    print("姓氏李")
//    case .赵:
//    print("姓氏赵")
//    default:
//        print("无姓氏")
//}

////为枚举类型指定一个原始值类型
//enum CharEnum:Character{
//    //通过赋值的方式为枚举值设置一个原始值
//    case a = "A"
//    case b = "B"
//    case c = "C"
//    case d = "D"
//}
//var aa = CharEnum.a //创建枚举变量
////var aa:CharEnum = .a
//var rawValue = aa.rawValue

////定义一个形状枚举
//enum Shape{
//    //圆形 设置圆心和半径相关值
//    case Circle(center:(Double,Double),radius:Double)
//    //矩形 设置中心、宽、高为相关值
//    case Rect(center:(Double,Double),width:Double,height:Double)
//    //三角形 设置3个顶点为相关值
//    case Triangle(point1:(Double,Double),point2:(Double,Double),point3:(Double,Double))
//}
////创建圆形枚举实例 此圆的圆心为(0,0),半径为3
//var circle = Shape.Circle(center: (0,0), radius: 3)
////创建中心(1,1),宽为10，高为15的矩形实例
//var rect = Shape.Rect(center: (1,1), width: 10, height: 15)
////创建(2,3),(3,3),(2,5)3个顶点的三角形实例
//var triangle = Shape.Triangle(point1: (2,2), point2: (3,3), point3: (2,5))
//
//func shapeFunc(param:Shape){
//    switch param {
//    case let .Circle(center, radius):
//        print("此圆的圆心为：\(center),半径为：\(radius)")
//    case let .Rect(center, width, height):
//        print("此矩形的中心为：\(center),宽为：\(width),高为：\(height)")
//    case let .Triangle(point1, point2, point3):
//        print("此三角形的三个顶点分别为：\(point1)---\(point2)---\(point3)")
//    default:
//        print("传入参数不满足条件")
//    }
//}
//
//shapeFunc(param: rect)

////使用递归算法来实现5的阶乘算法，5!=5*4*3*2*1
//func mathsFunc (param:Int) ->Int{
//    let temp = param - 1
//    if temp>0 {
//        //递归调用
//        return mathsFunc(param: temp)*param
//    }else{
//        return 1
//    }
//}
//print("5!=5*4*3*2*1的阶乘结果为\(mathsFunc(param: 5))")
//
////使用枚举类模拟加减乘除四则法则
//enum Expression{
//    //表示加法运算，两个相关值param1与param2代表吧进行加法运算的两个参数
//    case add(param1:Int,param2:Int)
//    //表示减法运算，两个相关值param1与param2代表吧进行加法运算的两个参数
//    case sub(param1:Int,param2:Int)
//    //表示乘法运算，两个相关值param1与param2代表吧进行加法运算的两个参数
//    case mul(param1:Int,param2:Int)
//    //表除法运算，两个相关值param1与param2代表吧进行加法运算的两个参数
//    case div(param1:Int,param2:Int)
//}
////表示表达式5+5
//var exp1 = Expression.add(param1: 5, param2: 5)
////表示表达式10-5
//var exp2 = Expression.sub(param1: 10, param2: 5)
////表示表达式5*5
//var exp3 = Expression.mul(param1: 5, param2: 5)
////表示表达式10/2
//var exp4 = Expression.div(param1: 10, param2: 2)

//使用枚举来模拟加减乘除四则运算
enum Expression{
    //描述单个数字
    case num(param:Int)
    //表示加法运算，将Expression作为相关值参数类型
    indirect case add(param1:Expression,param2:Expression)
    //表示减法运算
    indirect case sub(param1:Expression,param2:Expression)
    //表示乘法运算
    indirect case mul(param1:Expression,param2:Expression)
    //表除法运算
    indirect case div(param1:Expression,param2:Expression)
}
//创建单值5
var num1 = Expression.num(param: 5)
//表达式5+5
var exp1 = Expression.add(param1: num1 , param2: num1)
//创建单值2
var num2 = Expression.num(param: 2)
//表达式(5+5)*2
var exp2 = Expression.mul(param1: exp1, param2: num2)
//创建单值8
var num3 = Expression.num(param: 8)
//表达式((5+5)*2-8)
var exp3 = Expression.sub(param1: exp2, param2: num3)
//表达式((5+5)*2-8)/2
var exp4 = Expression.div(param1: exp3, param2: num2)

func expressionFunc(param:Expression)->Int{
    switch param {
        //单值 直接返回
    case let .num(param):
        return param
        //返回加法运算你结果
    case let .add(param1, param2):
        return expressionFunc(param: param1)+expressionFunc(param: param2)
        //返回减法运算你结果
    case let .sub(param1, param2):
        return expressionFunc(param: param1)-expressionFunc(param: param2)
    //返回乘法运算你结果
    case let .mul(param1, param2):
        return expressionFunc(param: param1)*expressionFunc(param: param2)
    //返回除法运算你结果
    case let .div(param1, param2):
        return expressionFunc(param: param1)/expressionFunc(param: param2)
    }
}
//进行最后预算结果
expressionFunc(param: exp4)
