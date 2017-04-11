//
//  ViewController.swift
//  LearnSwift
//
//  Created by vrsh on 10/04/2017.
//  Copyright © 2017 yuneec. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        swiftBasic()
        
    }
    
    /// swift 基本类别
    func swiftBasic(){
        
        print("hello world")
        
        let scroe = 100
        let myFullName = "3333"
        var myClass = "3323232"
        myClass = "1222"
        print(scroe, myClass, myFullName)
        
        // 整数和浮点数的转换
        let number_1 = 1
        let number_2 = 3.223
        let p = Double(number_1) + number_2
        let p_1 = Int(number_2) + number_1
        print(p, p_1)
        
        
        // 布林值
        let storeOpen = true
        let forFree = false
        print(storeOpen, forFree)
        
        // 元组: 是将多个值组成一个复合值, 其内的类别可以不同,以一对小括号前后包起来,每个值以逗号分隔:
        let myInfo = ("kevin", 25, 3.222)
        // 使用其中一个值
        let myHeight = myInfo.1
        print("My height:\(myHeight)")
        print(myInfo)
        // 也可将一个元组分解成单独的常数或变数,如下:
        // 将前面的myInfo分解为三个常数
        let (myName, myAge, myRealHeight) = myInfo
        print(myName, myAge, myRealHeight)
        
        // 如果只需要其中某些值时,分解时可以把不需要的用下划线_标记,如下:
        let (_, _, myTureHeight) = myInfo
        print("myTureHeight:\(myTureHeight)")
        
        // 也可以在创建元组的时候就分别给里面的值一个名称也可以,如下:
        let herInfo = (name:"Jess", age:33, height:178.33)
        print(herInfo)
        print("\(herInfo.name)--\(herInfo.age)--\(herInfo.height)")
        
        
        // 类别别名: 就是给已存在的类别定义另一个名字, 必须使用关键字 typealias 来定义类别别名.当你想要给已存在的类别命名一个更有意义的名字的时候很有用,如下:
        typealias MyType = Int
        var someNumber:MyType = 133
        someNumber = 200
        print(someNumber)
        
        
        // 可选类别: 这是swift的一个特性, 让变量或者常量可以有 没有值 得情况,这与 0 或者 空字符串"" 不同, 当没有值时,变量或常量会返回nil. 而nil代表的是 没有值, 任何类别只要有加上 可选类别(optional type)都可以设置成nil. 使用方法为在类别标注后面加上一个问号?, 如下:
        // 在创建变量时, 类别标注后面加上一个?
        var someScore: Int?
        someScore = 100
        someScore = nil
        print(someScore)
        
        // 但是如果没有加? ,则是尚未指派的状态, 这时如果直接使用会报错误
        var totalScore: Int
        // 不能设置为nil, 会报错
//        totalScore = nil
        // 创建常数也是一样, 在类型标注后面加上一个?
        let someName: String?
        someName = "change"
        print(someName)
        
        // 下面这个例子来说明可能会遇到的可选类别的情况:
        // 创建一个字符串常数
        let numberValue = "dfaf"
        // 尝试将这个字符串转换为整数
        let newNumber = Int(numberValue)
        print(newNumber)
        // 注: 这时如果原字符串不是单纯的数字, 转换后则会返回nil, 来避免发生错误的情况.也就是说返回的是一个可选类别Int?, 他可能是整数,也可能是nil
        
        
        // 强制解析: 当你认为一个可选类别一定有值, 则可以在这个变量后面加一个感叹号❗️, 表示这个可选类别有值,请使用它,称为强制解析.如下:
        let number_4:Int? = 322
        // 以这个例子来说,常数确实有值
        // 所以加上感叹号, 表示可选类别有值, 可以直接使用
        print(number_4!)
        
        // 尚未赋值 所以目前是 nil
        var number_5: Int?
        // 仍然要使用的话 下面这行则会报错误
//        print(number_5!)
        
        
        // 隐式解析可选类型: 当可选类型第一次被指派值后, 如果可以确定它之后都会有值, 这时可以将其改为隐式解析可选类型, 这样便不需要每次都判断及解析, 作法则是将可选类型的问号? 改为感叹号❗️, 如下说明:
        // 可选类型
        let oneString: String? = "2331"
        // 需要感叹号来取值
        let anotherString:String = oneString!
        print(anotherString)
        
        let threeString: String? = nil
        let otherString: String? = threeString
        print(otherString)
        
        
        // 如果改为隐式解析可选类型
        let twoString: String! = "2333323"
        // 可以直接使用 不用加上感叹号
        let finalSting: String = twoString
        
        
        
                
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

