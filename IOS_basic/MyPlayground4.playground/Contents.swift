import UIKit

var str = "Hello, playground"

//for index in 1...5{//使用区间运算符
//    print(index)
//}
////输出1，2，3，4，5
//
//var sum = 0;
//for _ in 1...3{
//    sum += 1
//}
//
//var collection1:Array = [1,2,3,4]
//var collection2:Dictionary = [1:1,2:2,3:3,4:4]
//var collection3:Set = [1,2,3,4]
//for index in collection1{
//    print(index)
//}
//for (key,value) in collection2{
//    print(key,value)
//}
//for index in collection3 {
//    print(index)
//}
//
//var i = 0
//while i<10{
//    print("while",i)
//    i+=1//进行i的自增加
//}
//var j = 0
//repeat{
//    print("repeat while",j)
//    j+=1
//}while j<10

//var c = 10
//if c<10 { //条件判断
//    print(c)
//}
////if-else组合
//if c>9{
//    c-=10
//    print(c)
//}else{
//    print(c)
//}
//
//if c>0 && c<10{
//    print(c)
//}else if c<=0{
//    c-=c
//    print(c)
//}else if c<=10 && c<20{
//    c-=10
//    print(c)
//}else{
//    print("end")
//}

//var charac = "b"
//switch charac {
//case "a":
//    print("charac is a")
//case "b":
//    print("charac is b")
//case "c":
//    print("charac is c")
//default:
//    print("charac is default")
//}

//var charac = "a"
//switch charac {
//case "a","b","c":
//    print("charac  is word")
//case "1","2","3" :
//    print("charac  is num")
//default:
//    print ("no charac")
//}
//
//var num = 3
//switch num{
//case 1...3 :
//    print("1<=num<=3")
//case 4 :
//    print("charac  is num")
//default:
//    print ("no charac")
//}

//var tuple = (3,1)
//switch tuple{//进行完全匹配
//case (0,1) :
//    print("Sure")
//case (_,1) :
//    print("Sim")
//case (0...3,0...3) ://进行元组元素的范围匹配
//    print("SIM")
//default:
//    print ("NULL")
//}

//var tuple = (0,3)
////进行数据绑定
//switch tuple{
////对元组中的第一个元素进行捕获
//case (let a,1) :
//    print("a is ",a)
//case (let b,0) :
//    print("b is ",b)
////捕获元组中的两个元组，let (a,b)与(let a,let b)意义相同
//case let(a,b) :
//    print("a,b is ",a,b)
//default:
//    print ("NULL")
//}

//var tuple = (1,1)
////进行数据绑定
//switch tuple{
////对元组中的第一个元素进行捕获
//case (let a,1) :
//    print("a is ",a)
//case (let b,0)  where b==0://当元素都等于0，才满足
//    print("b is ",b)
////捕获元组中的两个元组，let (a,b)与(let a,let b)意义相同
//case let(a,b) where a==b : //当2个元素相等时满足条件
//    print("a,b is ",a,b)
//default:
//    print ("NULL")
//}

//for index in 0...9{
//    if index  == 6 {
//        continue //跳过本次
//    }
//    print ("第\(index)次循环")
//}

//for index in 0...9{
//    if index  == 6 {
//        break//跳出循环结构
//    }
//    print ("第\(index)次循环")
//}

//Mylabel:for indexI in 0...3{
//    for indexJ in 0...3{
//        if indexI  == 1 {
//            break Mylabel//跳出循环结构
//        }
//        print ("第\(indexI)-\(indexJ)次循环")
//    }
//}

//var tuple = (0,0)
//switch tuple {
//case (0,0):
//    print("Suer")
//    //fallthrough会继续执行下面的case
//    fallthrough
//case (_,0):
//    print("Sim")
//    fallthrough
//case (0...3,0...3):
//    print("SIM")
//default:
//    print("NILL")
//}

////有返回值函数的返回
//func myFunc()->Int{
//    return 0
//}
////无返回值函数返回
//func myFunc(){
//    return
//}

//enum MyError:Error{
//        case errorOne //异常一，处理
//        case errorTwo//异常二，处理
//}
//func newFunc() throws{
//    //抛出异常
//    throw MyError.errorOnne
//}

//func myFuncTwo(param:Int){
//    if (param > 0) {
//         print("其他操作")
//    }
//}
//
//func myFuncTwo2(param:Int){
//    guard param > 0 else {
//         return
//    }
//    print("其他操作")
//}
//myFuncTwo2(param: 2)

//func isMoreThanTen(count:Int)->Bool {
//    if count > 10 {
//        return true
//    }else{
//        return false
//     }
//}
////对函数进行调用
//isMoreThanTen(count:11)
//func myFunc ()->String{
//    return "无参函数"
//}
////直接调用函数
//myFunc()


////也可以省略返回值部分
//func myFunc() {
//    print("无参无返回函数")
//}
////直接调用函数
//myFunc()

//func searchData (dataId:String)->(success:Bool,data:String){
//    //模拟一个查询结果和数据实体
//    let result = true
//    let data = "实体数据"
//    return (result,data)
//}
//if searchData(dataId: "1101").success {
//    //查询成果
//    print(searchData(dataId: "1101").data)
//}

////返回Optional类型值的函数
//func myFunc(param:Int)->Int?{
//    guard param>100 else{
//        return nil
//    }
//    return param-100
//}
//if let tmp = myFunc(param: 101) {
//    print(tmp)
//}

////多参函数，默认内部、外部命名一致
//func myFunc(param1:Int,param2:Int,param3:Int){
//    param1+param2+param3 //param1等是内部命名
//}
////调用函数参数列表中使用的param1等为外部命名
//myFunc(param1:1,param2:2,param3:3)
////多参函数，添加外部命名
//func myFunc(out1 param1:Int,out2 param2:Int,out3 param3:Int){
//    param1+param2+param3 //param1等是内部命名
//}
////调用函数时，参数需要调用外部命名标识out1,out2,out3
//myFunc(out1:1,out2:2,out3:3)

////省略外部命名的函数参数列表
//func myFunc(_ param1:Int,_ param2:Int,_ param3:Int){
//    param1+param2+param3 //param1等是内部命名
//}
////调用函数时，参数需要调用外部命名标识out1,out2,out3
//myFunc(1,2,3)
//
////默认参数 param2的值为10，param3的值为5
//func myFunc(param1:Int,param2:Int=10,param3:Int=5)->Int{
//   return param1+param2+param3
//}
////对每个参数进行传值
//myFunc(param1:1,param2:5,param3:6)
////只对没有设置默认值的参数传值
//myFunc(param1:1) //param1位置要一致
//myFunc(param2:1) //位置不一致，程序报错
//
//func myFunc(param:Int...){//使用...作为参数的省略
//   var sum = 0
//    for count in param {
//        sum+=count
//    }
//    print("total=",sum)
//}
//myFunc(param: 1,2)

//var addFunc:(Int,Int)->Void
////对函数变量信息赋值
//addFunc = {
//    (param1:Int,param2:Int) in return { print(param1 + param2) }()
//}
////调用函数变量
//addFunc(2,3)

//var addFunc:(Int,Int)->Int
//func addFunc2(param1:Int,param2:Int) ->Int{
//    return param1 + param2
//}
//addFunc = addFunc2 //使用函数进行赋值
//addFunc(2,3)
//
////函数作为参数 参数param类型为函数类型(Int,Int->Int)
//func addFunc(param1:Int,param2:Int) ->Int{
//    return param1 + param2
//}
//func addFunc2(param:(Int,Int)->Int) ->Int{
//    return param(2,3)
//}
//addFunc2(param: addFunc)

//var addFunc:(Int,Int)->Int
//func addFunc2()->(Int,Int)->Int{
//    return { (param1:Int,param2:Int) in
//        return param1 + param2
//    }
//}
////使用addFunc函数变量获取返回值
//addFunc = addFunc2()
////进行调用
//addFunc(1,2)

//var addFunc:(Int,Int)->Int{
//    func subFunc(param1:Int,param2:Int)->Int{
//        return param1 + param2
//    }
//    return subFunc
//}
//addFunc(1,2)

////闭包实现方式
//let myClosures = {
//    (param:Int) ->Int in
//    return param * param
//}
//myClosures(3)//闭包调用
//let myClosures1 = {
//    (param:Int) in
//    return param * param
//}
//myClosures1(3)

func mySort(_ array:inout Array<Any>,sortClosure:(Int,Int)->Bool) {
    //进行冒泡排序算法
    for indexI in 0..<array.count-1{
          //冒泡排序
          for indexJ in 0..<array.count-1-indexI {
              //调用传递进来的闭包算法
              if !sortClosure(array[indexJ+1] as! Int,array[indexJ] as! Int) {
                array.swapAt(indexJ+1, indexJ)
            }
          }}
}
var array:Array<Any> = [1,4,3,5,7,5,4,2,7]
//原结构
mySort(&array,sortClosure: { $0>$1}) //省略return 省略参数列表
mySort(&array){ $0>$1 } //后置闭包
print(array)
