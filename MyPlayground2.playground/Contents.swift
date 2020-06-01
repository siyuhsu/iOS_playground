import UIKit

var str = "Hello, playground"
//
//let names = ["Anna", "Alex", "Jack"]
//let count = names.count
//for i in 0..<count {
//    print(" \(i) : name \(names[i])")
//}

//for index in 1...5 {
//  print("\(index) * 5 = \(index * 5)")
//}

//let enteredDoorCode = true
//let passedRetinaScan = false
//if enteredDoorCode || passedRetinaScan {
//    print("Welcome!")
//} else {
//    print("ACCESS DENIED")
//}

//let enteredDoorCode = true
//let passedRetinaScan = false
//let hasDoorKey = false
//let knowsOverridePassword = true
//if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
//    print("Welcome!")
//} else {
//    print("ACCESS DENIED")
//}

//var array3 = [1,2,3] + [4,5,6,7]  //设置初始值
//var array3 = ["a","b","c"] + [4,5,6,7]
//
//var array = [1,2,3,4,5,6,7,8,9]
////获取数组中元素的个数 9
//array.count
////检查数组是否为空数组
//if array.isEmpty {
//    print("array为空数组")
//}
////通过下标获取数组中的元素 1
//var a = array[0]
////获取区间元素组成的新数组 [1,2,3,4]
//var subArray = array[0...3]
////获取数组的第1个元素
//var b = array.first
////获取数组的最后一个元素
//var c = array.last
////修改数组中某个位置的元素
//array[0] = 0
////修改数组中区间范围的元素
//array[0...3] = [1,2,3,4]
////向数组中追加一个元素
//array.append(10)
////向数组中追加一组元素
//array.append(contentsOf: [11,12,13])
////向数组中的某个位置插入一个元素
//array.insert(0, at: 0)
////向数组中的某个位置插入一组元素
//array.insert(contentsOf: [-2,-1], at: 0)
////移除数组中某个位置的元素
//array.remove(at: 1)
////移除数组中首个位置的元素
//array.removeFirst()
////移除最后一个位置的元素
//array.removeLast()
////移除前几位元素 参数为要移除元素的个数
//array.removeFirst(2)
////移除后几位元素 参数为要移除元素的个数
//array.removeLast(2)
////移除一个范围内的元素
//array.removeSubrange(0...2)
////修改一个范围内的元素
//array.replaceSubrange(0...2, with: [0,1])
////移除所有元素
//array.removeAll()
////Int型数组
//let arrayLet = [0,1,2,3,4]
////(Int,Int)型数组
//let arrayLet2 = [(1,2),(2,3),(3,4)]
////判断数组中是否包含某个元素
//if array.contains(1){
//    print(true)
//}

//let arrayLet = [0,1,2,3,4]
//let arrayLet2 = [("one",2),("two",3),("three",4)]
//for item in arrayLet {
//    print(item)
//}
////进行数组枚举遍历 将输出 (0,0) (1,1) (2,2) (3,3) (4,4)
////swift3.0 中将枚举属性enumerate 修改为enumerated()方法
//for item in arrayLet.enumerated(){
//    print(item)
//}
////进行数组角标遍历
////indices属性，返回一个数组下标的Range范围
//for index in arrayLet2.indices{
//   print(arrayLet2[index], separator:"")
//}

//var arraySort = [1,3,5,6,7]
//
////获取数组中的最大值
//arraySort.max()
//
////获取数组中的最小值
//arraySort.min()
//
////从大到小排序
//arraySort = arraySort.sorted(by: >)
//
////从小到大排序
//arraySort = arraySort.sorted(by: <)

//var dict:[String:Any] = ["name":"sunfusheng", "age":20, "blog":"sunfusheng.com"]
//// 初始化空的字典
//var dict1:Dictionary<String, String> = [:]
//var dict2:[String:String] = [:]
//var dict3 = [String:String]()
//var dict4 = Dictionary<String, String>()

//var dic1:[Int:String]
//dic1 = [1:"1",2:"2",3:"3"]
//dic1.count //获取字典中的元素个数
//
//if dic1.isEmpty{
//      print("字典为空")
//}
//else {
//      print("字典非空")
//}

//var dict = ["name":"sunfusheng", "age":20, "blog":"sunfusheng.com"] as [String : Any]
//// 有则更新键值对的值，无则增加一个键值对
//dict["github"] = "sfsheng0322"
//// updateValue: 有则更新键值对的值，无则增加一个键值对，返回 oldValue
//dict.updateValue("孙福生微博", forKey: "sina")
//dict.updateValue(28, forKey: "age")
//print(dict)
//// 输出
//
//var dict = ["name":"sunfusheng", "age":20, "blog":"sunfusheng.com"] as [String : Any]
//// 删除指定键的键值对，没有这个键值对相当于无操作
//dict.removeValue(forKey: "name")
//// 删除所有的键值对
////dict.removeAll()
//
//// 字典键的集合
//print(Array(dict.keys))
//// 字典值的集合
//print(Array(dict.values))

//var dict = ["name":"sunfusheng", "age":20, "blog":"sunfusheng.com"] as [String : Any]
//// 遍历字典的键
//for key in dict.keys {
//    print(key)
//}
//// 遍历字典的值
//for value in dict.values {
//    print(value)
//}
//// 使用元祖遍历字典的键值！
//for (key, value) in dict {
//    print("\(key):\(value)")
//}
//
//// 初始化A、B、C三个集合
//var A:Set<String> = ["A", "B", "C", "D"]
//var B:Set<String> = ["C", "D", "E", "F"]
//var C:Set<String> = ["B", "B", "C"]
//
//// Array、Dictionary动态初始化有四种，这里面只有两种
//var set1 = Set<String>()
//var set2:Set<String> = []
//// 集合的数量
//A.count
//// 集合第一个元素，因为集合的无序性，它的第一个元素没有意义
//A.first
//// 集合是否为空
//A.isEmpty
//// 向集合中插入一个元素
//A.insert("C")
//// 删除集合中的元素
//A.remove("C")
//// 判断集合中是否包含某个元素
//A.contains("A")
//// 遍历集合
//for index in A {
//    print(index)
//}
////获取集合中的最大值
//A.max()
////获取集合中的最小值
//A.min()

//var a:Set<Int> = [1,2,3,4]
//var b:Set<Int> = [1,2,5,6]
////返回交集{1,2}
//var setInter = a.intersection(b)
////返回交集的补集 {3,4,5,6}
//var setEx = a.symmetricDifference(b)
////返回并集{1,2,3,4,5,6}
//var setUni = a.union(b)
////返回补集{3,4}
//a.subtract(b)

//var a1:Set = [1,2]
//var a2:Set = [2,3]
//var b1:Set = [1,2,3]
//var b2:Set = [1,2,3]
//
//a1.isSubset(of:b1)  //判断集合a1是集合b1的子集
//b1.isSuperset(of:a1) //判断集合a1是集合b1的超级
//a1.isStrictSubset(of:b1) //判断集合a是集合b的真子集
//b1.isStrictSuperset(of:b2) //判断集合a是集合b的真超级

//var b1:Set = [1,2,3]
////遍历元素
//for item in b1 {
//    print(item)
//}
////遍历集合的枚举
//for item in b1.enumerated(){
//    print(item)
//}
////遍历集合的下标
//for index in b1.indices{
//    print(b1[index])
//}

//var b1:Set = [1,2,3]
//for item in b1.sorted(by: >){
//    print(item)
//}
