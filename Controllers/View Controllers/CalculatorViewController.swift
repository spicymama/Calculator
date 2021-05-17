//
//  CalculatorViewController.swift
//  Calculator
//
//  Created by Gavin Woffinden on 5/17/21.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    var currentNumber: Double = 0
    var previousNumber: Double = 0
    var performingMath = false
    var operation = 0
    
    //MARK: - Outlets
    @IBOutlet weak var label: NumberTextField!
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        view.backgroundColor = .black
    }

    //MARK: - Actions
    @IBAction func numbers(_ sender: UIButton) {
        
        if performingMath == true {
            label.text = String(sender.tag-1)
            currentNumber = Double(label.text!)!
            performingMath = false
        }
        
        else {
            label.text = label.text! + String(sender.tag-1)
            currentNumber = Double(label.text!)!
        }
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        
        if label.text != "" && sender.tag != 11 && sender.tag != 16{
            previousNumber = Double(label.text!)!
            
            if sender.tag == 12 { //Divide
                label.text = "÷";
            }
            
            if sender.tag == 13 { //Multiply
                label.text = "x";
            }
            
            if sender.tag == 14 { //Subtract
                label.text = "-";
            }
            
            if sender.tag == 15 { //Add
                label.text = "+";
            }
            operation = sender.tag
            performingMath = true;
        }
        
        else if sender.tag == 16 {
            if operation == 12{ //Divide
                label.text = String(previousNumber / currentNumber)
            }
            
            else if operation == 13{ //Multiply
                label.text = String(previousNumber * currentNumber)
            }
            
            else if operation == 14{ //Subtract
                label.text = String(previousNumber - currentNumber)
            }
            
            else if operation == 15{ //Add
                label.text = String(previousNumber + currentNumber)
            }
        }
        
        else if sender.tag == 11{
            
            label.text = ""
            previousNumber = 0;
            currentNumber = 0;
            operation = 0;
        }
    }
}





































/*
 //MARK: - Outlets
 @IBOutlet weak var numberTextField: NumberTextField!
 
 @IBOutlet weak var clearButton: GrayButtons!
 @IBOutlet weak var negativePositiveButton: GrayButtons!
 @IBOutlet weak var percentButton: GrayButtons!
 @IBOutlet weak var divideButton: OperatorButtons!
 @IBOutlet weak var buttonSeven: NumberButtons!
 @IBOutlet weak var buttonEight: NumberButtons!
 @IBOutlet weak var buttonNine: NumberButtons!
 @IBOutlet weak var multiplyButton: OperatorButtons!
 @IBOutlet weak var buttonFour: NumberButtons!
 @IBOutlet weak var buttonFive: NumberButtons!
 @IBOutlet weak var buttonSix: NumberButtons!
 @IBOutlet weak var subtractButton: OperatorButtons!
 @IBOutlet weak var buttonOne: NumberButtons!
 @IBOutlet weak var buttonTwo: NumberButtons!
 @IBOutlet weak var buttonThree: NumberButtons!
 @IBOutlet weak var additionButton: OperatorButtons!
 @IBOutlet weak var buttonZero: NumberButtons!
 @IBOutlet weak var decimalPointButton: NumberButtons!
 @IBOutlet weak var equalsButton: OperatorButtons!
 */





/* //MARK: - Actions
 @IBAction func clearButtonTapped(_ sender: Any) {
 }
 @IBAction func negativePositiveButtonTapped(_ sender: Any) {
 }
 @IBAction func percentButtonTapped(_ sender: Any) {
 }
 @IBAction func divideButtonTapped(_ sender: Any) {
 }
 @IBAction func buttonSevenTapped(_ sender: Any) {
 }
 @IBAction func buttonEightTapped(_ sender: Any) {
 }
 @IBAction func buttonNineTapped(_ sender: Any) {
 }
 @IBAction func multiplyButtonTapped(_ sender: Any) {
 }
 @IBAction func buttonFourTapped(_ sender: Any) {
 }
 @IBAction func buttonFiveTapped(_ sender: Any) {
 }
 @IBAction func buttonSixTapped(_ sender: Any) {
 }
 @IBAction func subtractButtonTapped(_ sender: Any) {
 }
 @IBAction func buttonOneTapped(_ sender: Any) {
 }
 @IBAction func buttonTwoTapped(_ sender: Any) {
 }
 @IBAction func buttonThreeTapped(_ sender: Any) {
 }
 @IBAction func additionButtonTapped(_ sender: Any) {
 }
 @IBAction func buttonZeroTapped(_ sender: Any) {
 }
 @IBAction func decimalPointButtonTapped(_ sender: Any) {
 }
 @IBAction func equalsButtonTapped(_ sender: Any) {
 }
 
 
 */












