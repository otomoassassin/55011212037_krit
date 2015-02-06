//
//  ViewController.swift
//  week4
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit





class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var a1: UILabel!
    @IBOutlet weak var a2: UILabel!
    @IBOutlet weak var a3: UILabel!
    
    var sumone=0
    @IBAction func one(sender: AnyObject) {
        sumone=sumone+1
        a1.text=String(sumone)
    }
    var sumtwo=0
    @IBAction func two(sender: AnyObject) {
        sumtwo=sumtwo+1
        a2.text=String(sumtwo)
    }
    
    var sumthree=0
    @IBAction func three(sender: AnyObject) {
        sumthree=sumthree+1
        a3.text=String(sumthree)
    }
  
    @IBAction func reset(sender: AnyObject) {
        sumone=0
        sumtwo=0
        sumthree=0
        
        a1.text="0"
        a2.text="0"
        a3.text="0"
    }
    
    
    
    
}

