//
//  ViewController.swift
//  nabeatsu
//
//  Created by ohtatomotaka on 2015/03/11.
//  Copyright (c) 2015年 ohtatomotaka. All rights reserved.
//

import UIKit
//TODO:コーディング規約を確認

class ViewController: UIViewController {
    var number:Int = 0
    @IBOutlet var label:UILabel!
    @IBOutlet var faceLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "\(0)"
    }
    //func メソッド名(引数の型) -> 戻り値のデータ型 {}
    func isAho() ->Bool{
        //問題1 3の倍数か
        if number % 3 == 0{
            return true
        }
        
        //問題2 1の位が3か
//        if number % 10 == 3{
//            return true
//        }
//        
//        //問題3 10の位が3か
//        if number / 10 % 10 == 3{
//            return true
//        }
        
        //問題4 数字に3が含まれているか
        //問題4をやるときは問題3の答えをコメントアウトしてから書こう
        var checkNum : Int
        checkNum = number
        
        while checkNum != 0 {
            if checkNum % 10 == 3 {
                return true
            } else {
                checkNum = checkNum / 10
            }
        }
        
        return false
    }
    @IBAction func plusButton(){
        number = number + 1
        label.text = "\(number)"
        if isAho() == true {
            faceLabel.text = "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"
        } else {
            faceLabel.text = "(゜o゜)"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}



/*
Q1
if number % 3 == 0{
return true
}

Q2
if number % 10 == 3{
return true
}

Q3
if number / 10 % 10 == 3 {//10で割った後、10で割った余りを出す
return true
}

Q4
while number != 0 {
if number % 10 == 3 {
return true
}else {
number = number / 10
}
}


*/