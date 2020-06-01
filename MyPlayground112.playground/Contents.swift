import UIKit

var str = "Hello, playground"

//class myClass{
////声明属性时直接进行赋值
//var count:Int = 0{
//    //监听属性 将要被赋值时调用的方法
//    willSet{
//        print("willSet")
//    }
//}
//var name:String{
//    //监听属性 完成赋值时调用的方法
//    didSet{
//        print("didSet")
//    }
//}
////自定义构造方法
//init() {
//    //必须对name属性进行赋值
//    name="叫什么名字"
//}
//}

////创建全部属性都有默认值类 无需显示构造方法 编译器默认自动生成无参构造方法 init()
//class myClass{
//    //声明属性时直接进行赋值
//    var age:Int = 39
//    var name:String = "郑小罗"
//}
////对类进行实例化
//var myCl = myClass()
////对属性进行调用
//print("我叫\(myCl.name)，今年\(myCl.age)岁")
//
////创建一个结构体
//struct myStruct{
//    var age:Int = 39
//    var name:String
//}
////实例化结构体
//var myStr = myStruct(age: 40, name: "郑小罗")
//print("我叫\(myStr.name)，今年\(myStr.age)岁")

////创建一个类作为基类
//class baseClass{
//    //提供一个指定构造方法
//    init() {
//        print("这是基类的指定构造方法")
//    }
//    //提供一个便利构造方法
//    //便利构造方法必须调用当前类中的其他构造方法并最终调用到指定构造方法
//    convenience init(param:String){
//        print("这是基类的便利构造方法")
//        //进行指定构造方法调用
//        self.init()
//    }
//}
////创建一个子类
//class subClass:baseClass{
//    //重写指定构造方法，方法中必须调用父类的指定构造方法
//    override init(){
//        //调用父类指定构造方法
//        super.init()
//    }
//    //提供两个便利构造方法
//    convenience init(param:String) {
//        //最终调用到自己指定的构造方法
//        self.init()
//    }
//    convenience init(param:Int) {
//        //调用另一个便利构造方法
//        self.init(param:"郑小罗")
//    }
//}
//
//var suc = subClass()

////创建一个类作为基类
//class baseClass{
//    //提供一个指定构造方法
//    init() {
//        print("这是基类的指定构造方法")
//    }
//    init(param:Int) {
//        print("这是基类的指定构造方法2，参数param为\(param)")
//    }
//    //提供一个便利构造方法
//    convenience init(param:String){
//        print("这是基类的便利构造方法")
//        //进行指定构造方法调用
//        self.init()
//    }
//}
////子类北部进行任何构造方法的定义，默认继承父类中的所有构造方法
//class myCls1:baseClass{
//
//}
////子类对父类的无参构造方法init()进行覆写/重写
//class myCls2:baseClass{
//    //覆写父类指定构造方法，不继承父类其他构造方法
//    override init() {
//        super.init()
//    }
//}
////子类不覆写父类构造方法，通过函数重载方式定义自己的构造方法
//class myCls3:baseClass{
//    //重载新的构造方法 就不再继承父类的其他构造方法
//    init(param:Bool) {
//        super.init()
//    }
//}
////子类覆写父类所有指定构造方法 就会默认把父类的便利构造方法继承下来
//class myCls4:baseClass{
//    override init(param:Int) {
//        super.init(param: param)
//    }
//    override init() {
//        super.init()
//    }
//}
//
////创建一个基类
//class check{
//    var property :Int
//    init(param:Int) {
//        property = param
//    }
//}
////创建继承与check类的子类
//class subCheck:check{
//    var subProperty :Int
//    init() {
//        //检查1 必须在调用父类的指定的构造方法钱，完成本身属性的赋值
//        subProperty = 1
////检查2 如果子类要x重新赋值父类继承类的属性，必须在调用父类的指定构造方法后
//        super.init(param: 0)
//        property = 2
//        //检查4 在完成父类的构造方法之后，才能使用self关键字
//        self.subProperty = 4
//    }
//    //便利构造方法
//    convenience init(param1: Int,param2:Int) {
//        self.init()
//        //检查3 便利构造方法中要修改属性的值必须在调用指定构造方法之后
//        subProperty = param1
//        property = param2
//    }
//}

//class check{
//    var property :Int
//    init(param:Int) {
//        property = param
//    }
//    init?(param:Bool) {
//        //使用守护语句 当param为true是才进行构造
//        guard param else{
//            return nil
//        }
//        property = 1
//    }
//}
//var checCls = check(param: false)//返回nil

//class check{
//    var property :Int
//    required init(param:Int) {//必要构造方法
//        property = param
//    }
//    init?(param:Bool) {
//        //使用守护语句 当param为true是才进行构造
//        guard param else{
//            return nil
//        }
//        property = 1
//    }
//}

//class temp{
//    deinit {
//        print("temp实例被销毁")
//    }
//}
//var temp1:temp? = temp()
////当可选类型的类实例变量被赋值为nil时，实例会被释放
//temp1 = nil

//func arcTest(){
//    var a = 10 //变量a的作用域为整个函数内
//    while a>0 {
//        a -= 1
//         var b = 2 //变量b作用域为while循环块内，while外则被销毁，空间被释放
//    }
//    if a<0 {
//        var c = 3 //变量c作用域为if语句块，if语句结束后，变量c被销毁，占用空间被释放
//    }
//}
////创建一个类
//class testCl{
//        var name:String = "郑小罗" //name属性与类实例关联 生命周期与当前类实例一致
//}
//var cl:testCl? = testCl() //创建类实例 属性name被构造 分配内存空间
//cl = nil //cl实例被销毁 属性一起被销毁 释放占用的内存空间

//class classOne{
//    deinit {
//        print("classOne is deinited")
//    }
//}
//class classTwo{
//    //classTwo类中有一个classOne类的属性
//    var cls:classOne?
//    init(cls:classOne?) {
//        self.cls = cls
//    }
//    deinit {
//        print("classTwo is deinited")
//    }
//}
//var obj:classOne? = classOne()
//var obj2:classTwo? = classTwo(cls: obj)
////此时classTwo类中的cls属性依然在引用obj实例 因此obj实例所占用内存没有释放
//obj = nil
////此时obj2倍释放 obj2中的属性也都被释放 叜有谁引用obj obj实例也被释放
//obj2 = nil
//
////循环引用
//class classOne{
//    weak var cls:classTwo?
//    deinit {
//        print("classOne is deinited")
//    }
//}
//class classTwo{
//    //classTwo类中有一个classOne类的属性
//    var cls:classOne?
//    init(cls:classOne?) {
//        self.cls = cls
//    }
//     deinit {
//            print("classTwo is deinited")
//        }
//}
//var obj:classOne? = classOne()
//var obj2:classTwo? = classTwo(cls: obj)
//obj?.cls = obj2
////此时classTwo类中的cls属性依然在引用obj实例 因此obj实例所占用内存没有释放
//obj = nil
////此时obj2倍释放 obj2中的属性也都被释放 ，引用obj实例也被释放，内存没有释放。
//obj2 = nil
//
//class classCl{
//  var name:String = "郑小罗"
//  lazy var closure:()->Void = {
//      //闭包中使用引用值会使引用+1
//      print(self.name)
//  }
//  deinit {
//      print("classCl is deinited")
//  }
//}
//var obj:classCl? = classCl()
//obj?.closure
////并没有打印deinit方法中的信息
//obj = nil

//class classCl{
//    var name:String = "郑小罗"
//    lazy var closure:()->Void = {
//        //使用捕获列表对闭包中使用到的self进行无主引用的转换
//        [unowned self]()->Void in
//        //闭包中使用引用值会使引用+1
//        print(self.name)
//    }
//    deinit {
//        print("classCl is deinited")
//    }
//}
//var obj:classCl? = classCl()
//obj?.closure
////通过控制台打印信息 看出内存已经被释放
//obj = nil

//enum myError:Error{
//    //定义3种程度的异常
//    case DesTroyError
//    case NormalError
//    case SimpleError
//}
//print("显示错误信息")
////进行异常b的b抛出
//throw myError.DesTroyError
//print("结束")
enum myError:Error{
    //定义3种程度的异常
    case DesTroyError
    case NormalError
    case SimpleError
}
//print("显示错误信息")
////进行异常b的b抛出
//throw myError.DesTroyError
//print("结束")
//do{
//    try myFunc(param: false)
//}catch myError.SimpleError{
//    print("SimpleError错误信息")
//}catch myError.DesTroyError{
//    print("DesTroyError错误信息")
//}catch myError.NormalError{
//    print("NormalError错误信息")
//}
//var temsp = try?myFunc(param: true)
//if temsp == nil{
//    print("执行失败")
//}else{
//    print("执行成功")
//}
//
//try!myFunc(param: true)

//func temFunc()throws->Void{
//    //延时执行结构
//    defer {
//        print("结束")
//    }
//    print("开始执行")
//    //抛出异常
//    throw myError.DesTroyError
//}
////调用函数结果
//try temFunc()

//var strs = 123
////进行实例类型检查
//if strs is String{
//    print("str is String!")
//}else{
//    print("str is not String")
//}
////创建一个基类
//class baseClass{
//}
////创建一个子类
//class myClss:baseClass{
//}
//var cls1 = baseClass()
//var cls2 = myClss()
////使用父类实例类进行子类类型检查 返回false
//if cls1 is myClss{
//    print("cls1 is myClass")
//}
////使用子类实例进行父类类型检查 返回true
//if cls2 is baseClass{
//    print("cls2 is baseClass")
//}

////创建一个基类
//class baseClass{
//
//}
////自定义一个类及其子类
//class myClss:baseClass{
//    var name:String?
//}
//class  mySubClass1: myClss {
//    var count:Int?
//}
//class mySubClass2: myClss {
//    var isBigger:Bool?
//}
////创建3个实例
//var obj1 = myClss()
//obj1.name = "郑小罗"
//var obj2 = mySubClass1()
//obj2.count = 100
//var obj3 = mySubClass2()
//obj3.isBigger = true
////将实例存放在其公共父类类型的数组集合中
//var array:[myClss] = [obj1,obj2,obj3] //第一条原则 父类类型集合可以接收子类类型实例
////进行遍历
//for i in 0..<array.count {
//    var obj = array[i]
//    if obj is mySubClass1 {
//        //进行类型转换
//        print((obj as! mySubClass1).count!)//第二条原则 父类集合中的实例 转换为子类类型
//        continue
//    }
//    if obj is mySubClass2 {
//        //进行类型转换
//        print((obj as! mySubClass2).isBigger!)
//        continue
//    }
//    if obj is myClss {
//        //使用父类共有的属性
//        print(obj.name!)
//    }
//}

////创建3个各自独立的类
//class classOne {
//}
//class classTwo {
//}
//class classThree {
//}
////进行类的实例化
//var clsOne = classOne()
//var clsTwo = classTwo()
//var clsThree = classThree()
////使用AnyObject类型数组接收
//var clsArray:Array<AnyObject> = [clsOne,clsTwo,clsThree]
//for obj in clsArray{
//    //进行类型匹配
//    if obj is classOne{
//        print("obj属于第一个类")
//    }else if obj is classTwo{
//        print("obj属于第二个类")
//    }else if obj is classThree{
//        print("obj属于第三个类")
//    }
//}
////创建3个各自独立的类
//class classOne {
//}
//class classTwo {
//}
//class classThree {
//}
////进行类的实例化
//var clsOne = classOne()
//var clsTwo = classTwo()
//var clsThree = classThree()
////创建一个Any元素类型的数组
//var anyArray:Array<Any> = [clsOne,clsTwo,clsThree,100,"郑小罗",false,(1,1),{()->() in print("Closures")}]

////定义泛型
//func exchange<T>(param1:inout T,param2:inout T){
//    let tmp = param1
//    param1 = param2
//    param2 = tmp
//}
//var p1 = 15
//var p2 = 40
//exchange(param1: &p1, param2: &p2)
//print(p1,p2)
//
////创建一个类 有两个属性
//class myClass{
//    var name:String
//    var age:Int
//    init() {
//        name = "郑小罗"
//        age = 35
//    }
//}
//
////myClass类扩展一个计算属性
//extension myClass{
//    var nameAndAge:String{
//        return "\(name)的年龄："+"\(age)"
//    }
//}
//var obj = myClass()
////调用扩展中的属性
//print(obj.nameAndAge)

////创建一个类 有两个属性
//class myClass{
//    var name:String
//    var age:Int
//    init() {
//        name = "郑小罗"
//        age = 35
//    }
//}
////myClass类扩展一个s计算属性
//extension myClass{
//    var nameAndAge:String{
//        return "\(name)的年龄："+"\(age)"
//    }
//
////添加扩展便利构造器
//    convenience init(name:String,age:Int){
//        self.init()
//        self.name = name
//        self.age = age
//    }
//    //添加扩展实例方法
//    func logName() -> String {
//        print(name)
//        return name
//    }
//    //添加扩展类方法
//    class func logClassName() {
//        print("myClass")
//    }
//}
//var obj = myClass()
////调用扩展中的属性
//print(obj.nameAndAge)
////调用扩展中的实例方法
//var obj2 = myClass(name: "小罗郑", age: 53)
//print(obj2.nameAndAge)
////调用扩展中的方法
//print(obj.logName())
//myClass.logClassName()

//protocol myProtocol{
//    //定义可读属性
//    var name:String{get}
//    //定义可读写属性
//    var age:Int{get set}
//    //定义可读属性
//    var nameAndAge:String{get}
//    //定义静态属性
//    static var className:String{get}
//    //声明示例方法
//    func logName()
//    //声明静态方法
//    static func logClassName()
//}
////创建一个遵守myProtocol协议
//class protocolClass:myProtocol{
//    //进行协议中的属性实现
//    var name: String
//    var age: Int
//    var nameAndAge: String{
//        get{
//            return "\(name)"+"\(age)"
//        }
//    }
//    static var className: String{
//        get{
//            return "myProtocolClass"
//        }
//    }
////进行协议中的方法
//    func logName() {
//        print(name)
//    }
//    static func logClassName() {
//        print("myProtocolClassLog")
//    }
//    init() {
//        name = "郑小罗"
//        age = 35
//    }
//}

//var stepSize = 1
//func increment(_ number:inout Int){
//    number += stepSize
//}
//increment(&stepSize)

//struct Player{
//    var name:String
//    var health:Int
//    var energy:Int
//
//    let maxHealth = 10
//    mutating func shareHealth(_ player: inout Player){
//        health = player.health
//    }
//}
//var play = Player(name: "jaki", health: 10, energy: 10)
//play.shareHealth(&play)

//var multiLineStr = """
//abdc
//jakk
//24
//"""
//print(multiLineStr)
//
////swift3遍历数组范围
//let array = ["1","2","3"]
//for item in array[0..<array.count] {
//    print(item)
//}
////swift4遍历数组范围
//let array1 = ["1","2","3"]
//for item in array1[0...] {
//    print(item)
//}
