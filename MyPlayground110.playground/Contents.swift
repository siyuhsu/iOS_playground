import UIKit

//var str = "Hello, playground"
//struct Car{
////设置三个属性 两个方法
////价格属性
//var price:Int
////品牌属性
//var brand:String
////油量属性
//var petrol:Int
////提供一个开车的方法
//mutating func drive(){
//    if petrol>0 {
//        petrol -= 1
//        print("汽车开了10公里")
//    }
//}
//mutating func addPetrol(){
//    petrol += 10
//    print("加了10升汽油")
//}
//}
//
////创建一个价格为100000，品牌为奔驰，初始油量为10
//var benCar = Car(price: 100000, brand: "奔驰", petrol: 10)
////使用点语法过去car实例的属性
//print("这辆汽车品牌为：\(benCar.brand),价格为：\(benCar.price),油量为：\(benCar.petrol)")
////模拟开车
//for _ in 0...10{
//    //如果油量为0就进行加油行为
//    if benCar.petrol == 0{
//        benCar.addPetrol()//加油
//    }else{
//        benCar.drive()//开车
//    }
//}

//class Car{
//    //设置三个属性 两个方法
//    //价格属性
//    var price:Int
//    //品牌属性
//    var brand:String
//    //油量属性
//    var petrol:Int
//    //提供一个开车的方法
//    func drive(){
//        if petrol>0 {
//            petrol -= 1
//            print("汽车开了10公里")
//        }
//    }
//    func addPetrol(){
//        petrol += 10
//        print("加了10升汽油")
//    }
//    init(price:Int,brand:String,petrol:Int) {
//        self.price = price
//        self.brand = brand
//        self.petrol = petrol
//    }
//}
//
////创建一个价格为100000，品牌为奔驰，初始油量为10
//var benCar = Car(price: 100000, brand: "奔驰", petrol: 10)
////使用点语法过去car实例的属性
//print("这辆汽车品牌为：\(benCar.brand),价格为：\(benCar.price),油量为：\(benCar.petrol)")
////模拟开车
//for _ in 0...10{
//    //如果油量为0就进行加油行为
//    if benCar.petrol == 0{
//        benCar.addPetrol()//加油
//    }else{
//        benCar.drive()//开车
//    }
//}
//
//class Transport{
//    //设置三个属性 两个方法
//    //价格属性
//    var price:Int
//    //品牌属性
//    var brand:String
//    //油量属性
//    var petrol:Int
//    //提供一个行驶方法
//    func drive(){
//        if petrol == 0 {
//            addPetrol()
//        }
//    }
//    //加油方法
//    func addPetrol(){
//        petrol += 10
//    }
//    init(price:Int,brand:String,petrol:Int) {
//        self.price = price
//        self.brand = brand
//        self.petrol = petrol
//    }
//}
//
////创建汽车子类
//class car:Transport{
//    //轮胎数
//    var tyre:Int
//    //对父类方法重写
//    override func drive() {
//        super.drive()
//        print("汽车在路上行走10公里")
//        self.petrol -= 1
//    }
//    init(tyreCount:Int,price:Int,brand:String,petrol:Int) {
//        self.tyre = tyreCount
//        super.init(price: price, brand: brand, petrol: petrol)
//    }
//}
//
////创建轮船子类
//class boat:Transport{
//    //轮船层数
//    var floor:Int
//    //对父类方法重写
//    override func drive() {
//        super.drive()
//        print("轮船在海上行走50公里")
//        self.petrol -= 2
//    }
//    init(floorCount:Int,price:Int,brand:String,petrol:Int) {
//        self.floor = floorCount
//        super.init(price: price, brand: brand, petrol: petrol)
//    }
//}
//
////创建飞机子类
//class airPlane:Transport{
//    //飞行高度
//    var height:Int
//    //对父类方法重写
//    override func drive() {
//        super.drive()
//        print("飞机在天上飞行100公里")
//        self.petrol -= 5
//    }
//    init(height:Int,price:Int,brand:String,petrol:Int) {
//        self.height = height
//        super.init(price: price, brand: brand, petrol: petrol)
//    }
//}
//
////创建汽车对象
//var Car = car(tyreCount: 4, price: 10000, brand: "上海汽车", petrol: 100)
////创建轮船
//var Boat = boat(floorCount: 5, price: 100000, brand: "江南造船厂", petrol: 500)
////创建飞机
//var AirPlane = airPlane(height: 50000, price: 1000000, brand: "中国商飞C919", petrol: 1000)
////调用方法
//Car.drive()
//Boat.drive()
//AirPlane.drive()

////以学生类为例，定义学生姓名、性别、年龄都是存储属性
//class Student{
//    //定义姓名和年龄为变量存储属性 可修改
//    var name:String
//    var age:Int
////属性在声明时提供初始值，构造方法无需赋值
//     var schoolName = "上海海洋大学"
//    //定义性别为常量存储属性 不可修改
//    let sex:String
//    //提供一个h构造方法
//    init(name:String,age:Int,sex:String) {
//        self.name = name
//        self.age = age
//        self.sex = sex
//    }
//}
//
//var stu = Student(name: "zhang", age: 12, sex: "man")
//stu.sex
//
////结构，值类型
//struct Point {
//    var x:Double
//    var y:Double
//}
////类，引用类型
//class PointOther {
//    var x:Double
//    var y:Double
//    init(x:Double,y:Double) {
//        self.x = x
//        self.y = y
//    }
//}
//let point = Point(x: 2, y: 3) //常量
////point.x = 5 //point为常量，编译器报错
//let point2 = PointOther(x: 2, y: 3) //虽然定义常量，引用类型
//point2.x = 5//编译器不报错

//class Work{
//    var name:String
//    init(name:String) {
//        self.name = name
//        print("完成了work实例构造")
//    }
//}
//class pople {
//    var age:Int
//    lazy var work:Work = Work(name: "上课老师")
//    init(age:Int) {
//            self.age = age
//            print("完成老师pople的构造")
//    }
//}
////构造people实例 不打印 work的输出语句
//var peo = pople(age: 20)
//var wok = peo.work
//print(wok)
//
//class Circle{
// //提供2个存储属性
// var center:(Double,Double)
// var radius:Double
// //提供周长与面积的计算属性
// var l:Double{
//     get{
//         return 2*radius*Double.pi
//     }
//     set{
//         radius = newValue/2/Double.pi
//     }
// }
// var s:Double{
//        get{
//            return radius*radius*Double.pi
//        }
//        set(mySetValue){
//            radius = sqrt(mySetValue/Double.pi)
//        }
//    }
//    //构造方法
//    init(center:(Double,Double),radius:Double) {
//        self.center = center
//        self.radius = radius
//    }
//}
//
//var circle = Circle(center: (3,3), radius: 3)
////通过计算属性获取周长与面积
//print("圆的周长为：\(circle.l)-----面积为：\(circle.s)")
////通过周长和面积设置圆的半径
//circle.l = 12*Double.pi//赋值给元周长 radius = 6
//print("通过周长计算圆的半径为：\(circle.radius)")
//circle.s = 25*Double.pi//赋值给面积 radius = 5
//print("通过面积求圆的半径为：\(circle.radius)")

//class teacher{
//    var name:String{
//        //此属性将要被赋值时会调用
//        willSet{
//            //其中会默认生成一个newValue来接收外界传进来的新值
//            print("将要设置名字为：\(newValue)")
//        }
//    //此属性已经被赋值后会调用的方法
//        didSet(oldV){
//            //其中会默认生成一个oldValue来保存此属性的原始值
//            print("旧的名字为：\(oldV)")
//        }
//    }
//    var age:Int
//    init(name:String,age:Int) {
//        self.name = name
//        self.age = age
//    }
//}
//
////构造时，并不会打印属性监听器中的打印信息
//var tea = teacher(name: "郑小罗", age: 35)
////第二次赋值时才会打印属性监听器中的信息 newValue:小罗郑，oldValue：郑小罗
//tea.name = "小罗郑"

//class staticCl{
//    //静态存储属性
//    static var className = "static类名称"
//    //静态计算属性
//    static var subName:String{
//        return "计算属性名："+className
//    }
//    //允许子类对其方法进行重写 使用class声明
//    class var classSubName:String{
//        return "class " + subName
//    }
//}
////类属性不需要创建实例对象，直接使用类名称调用
//staticCl.className
//staticCl.classSubName
//staticCl.subName
////创建一个继承父类的子类
//class subStaticCl:staticCl{
//    //对计算属性方法进行重写 使用关键字 override
//    override class var classSubName: String{
//        return "新的名称"
//    }
//}
//subStaticCl.classSubName
//
//创建一个数学类
class Math{
    //提供一个方法的实例函数
    func add(param1:Double,param2:Double) -> Double {
        return param1 + param2
    }
    //提供一个求和的平方的方法
    func sqr(param1:Double,param2:Double) -> Double {
        //调用自身的其他实例方法
        return self.add(param1: param1, param2: param2) * self.add(param1: param1, param2: param2)
    }

}
//创建数学类实例
var math = Math()
//实例对象通过点语法调用实例函数方法
math.sqr(param1: 10, param2: 20)
//创建一个点结构体
struct point{
    var x:Double
    var y:Double
    //将点进行移动 因修改了属性的值 使用mutating修饰
    mutating func move (x:Double,y:Double){
        self = point(x: self.x+x, y: self.y+y)
    }
//提供一个静态属性
    static let name = "点名称"
    static func printName(){
        //使用self调用静态属性
        print(self.name)
    }
}
//使用结构体名直接调用静态方法
point.printName()
