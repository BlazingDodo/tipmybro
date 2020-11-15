//
//  ViewController.swift
//  Tipmybro
//
//  Created by Aryan Modi on 15/11/20.
//  Copyright © 2020 Aryan Modi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    // github check
        
    }


    @IBAction func OnTap(_ sender: Any) {
        print("Hello")
        
        view.endEditing(true)
    }
    @IBAction func CalculateTip(_ sender: Any) {
        
        //Get bill amount
        let bill = Double(billField.text!) ?? 0
     
        // Caculate tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill*tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

