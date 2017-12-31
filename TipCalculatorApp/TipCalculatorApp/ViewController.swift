//
//  ViewController.swift
//  TipCalculatorApp
//
//  Created by Esther Song on 12/30/17.
//  Copyright © 2017 Esther Song. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true);
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercentage = [0.15, 0.20, 0.25];
        let bill = Double(billField.text!) ?? 0;
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex];
        let total = bill + tip;
        
        tipLabel.text = String(format: "$%.2f", tip);
        totalLabel.text = String(format: "$%.2f", total);
    }
}

