//
//  ViewController.swift
//  TipCalculator
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        refreshUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var totalTextField: UITextField!
    
    @IBOutlet weak var taxPctSlider: UISlider!
    
    @IBOutlet weak var taxPctLabel: UILabel!
    
    @IBOutlet weak var resultsTextView: UITextView!
    
     @IBAction func taxPercentageChanged(sender: AnyObject) {
        tipCalc.taxPct = Double(taxPctSlider.value) / 100.0
        refreshUI()
        
    }
    @IBAction func calculateTapped(sender: AnyObject) {
        tipCalc.total = Double((totalTextField.text as NSString).doubleValue)
        let possibleTips = tipCalc.returnPossibleTips()
        var results = ""
        for(tipPct, tipValue) in possibleTips{
            results += "\(tipPct)% : \(tipValue)\n"
        }
        resultsTextView.text = results
    }
    
    
    @IBAction func viewTapped(sender: AnyObject) {
        totalTextField.resignFirstResponder()
    }
    
    let tipCalc = TipCalculatorModel(total: 33.25, taxPct: 0.06)
    func refreshUI(){
        totalTextField.text = String(format: "%0.2f", tipCalc.total)
        taxPctSlider.value=Float(tipCalc.taxPct)*100.0
        taxPctLabel.text="Tax Percentage (\(Int(taxPctSlider.value))%)"
        resultsTextView.text = ""
        
    }
    
   
}

