//
//  ViewController.swift
//  tipEasy2
//
//  Created by 何恺君 on 12/23/18.
//  Copyright © 2018 Kaijun He. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var percentControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func OnTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
    @IBAction func Calculation(_ sender: AnyObject) {
        let percent = [0.15,0.18,0.20]
        let bill=Double(billField.text!) ?? 0
        let tip=bill*percent[percentControl.selectedSegmentIndex]
        let total=bill+tip
        
        tipLabel.text = String(format:"$%.2f",tip)
        totalLabel.text = String(format:"$%.2f",total)
    }
    
    
}

