//
//  ViewController.swift
//  tipcalc
//
//  Created by Juliette Rike on 10/8/19.
//  Copyright © 2019 iettle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var billField: UITextField!
    @IBOutlet var tipLabel: UILabel!
    @IBOutlet var totalLabel: UILabel!
    @IBOutlet var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.tintColor = UIColor.red
    }


    @IBAction func onTap(_ sender: Any) {
        // dismisses keyboard
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // Get bill amount
        let bill = Double(billField.text!) ?? 0
        
        // Calculate tip and total
        let tipPercentages = [0.15, 0.2, 0.22]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

