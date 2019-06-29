//
//  ViewController.swift
//  计算器实例
//
//  Created by 张伟 on 2019/6/29.
//  Copyright © 2019年 张伟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "0"
        resultLabel.textColor = UIColor.white
        
    }
    
    
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    enum Operators:String{
    case Add = "+"
    case Subtract = "-"
    case Multiply = "*"
    case Divide = "/"
    case Empty = "Empty"

    }
    
    var firstNumber = ""
    var secondNumber = ""
    var currentOperator = Operators.Empty
    var displayedNumber = ""
    var result = ""
    
    
    @IBAction func numberSelected(sender: UIButton){


        displayedNumber += String (sender.tag)
    
        resultLabel.text = displayedNumber
    
    }
    
    @IBAction func selectedSubtract(sender : UIButton){
    selectedOperator(operation: Operators.Subtract)
    }
    
    
    @IBAction func selectedMultiply(sender : UIButton){
        selectedOperator(operation: Operators.Multiply)
    }
    
    
    @IBAction func selecteDivide(sender : UIButton){
        selectedOperator(operation: Operators.Divide)
    }
    
    @IBAction func selecteAdd(sender : UIButton){
        selectedOperator(operation: Operators.Add)
    }

    
    @IBAction func selectedEqual(sender : UIButton){
        selectedOperator(operation: currentOperator)
    }
    
    
    
    @IBAction func selectedClear(sender : UIButton){
    
         firstNumber = ""
         secondNumber = ""
         currentOperator = Operators.Empty
         displayedNumber = ""
         result = ""
         resultLabel.text = "0"
    
    }

    
    
    func selectedOperator(operation: Operators) {
        
        if currentOperator != Operators.Empty{
            
            if displayedNumber != ""{
             secondNumber = displayedNumber
                displayedNumber = ""
                
            }
           
            switch currentOperator  {
                
                case Operators.Add :
                result = String (Double(firstNumber)! + Double (secondNumber)!)
            
                case Operators.Subtract :
                    result = String (Double(firstNumber)! - Double (secondNumber)!)

                case Operators.Multiply:
                    result = String (Double(firstNumber)! * Double (secondNumber)!)
                    
                case Operators.Divide :
                    result = String (Double(firstNumber)! / Double (secondNumber)!)

                    default:
                    print("error")
                }
            
            firstNumber = result
            resultLabel.text = result
            currentOperator = operation
            
            
        }else {
        firstNumber = displayedNumber
            displayedNumber = ""
            currentOperator = operation
        
        
        
        }
    }
    
    
    
    
    
    
}



    
    
    
    
    
    
    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.




