//
//  ViewController.swift
//  tips
//
//  Created by Ivan on 8/22/15.
//  Copyright (c) 2015 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var baseTipLabel: UILabel!
    var tipPercentages = [0.18, 0.2, 0.22]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        
    }

    override func viewDidAppear(animated: Bool) {
        var defaults = NSUserDefaults.standardUserDefaults()
        var stringValue = defaults.objectForKey("country") as! String
        var tipBase = defaults.integerForKey("baseTip")
        //defaults.integerForKey("baseTip")
        
        countryLabel.text = "In \(stringValue)"
        
        if tipBase == 0 {
            baseTipLabel.text = "tipping is not common"
            tipPercentages[0] = 0.18
            tipPercentages[1] = 0.2
            tipPercentages[2] = 0.22
            
            tipControl.setTitle("18%", forSegmentAtIndex:0)
            tipControl.setTitle("20%", forSegmentAtIndex:1)
            tipControl.setTitle("22%", forSegmentAtIndex:2)
            
        } else {
            baseTipLabel.text = "tipping is in the following ranges"
            var second = Int(round(Double(tipBase) * 1.25))
            var third = Int(round(Double(tipBase) * 1.5))
            
            tipPercentages[0] = Double(tipBase)/100.0
            tipPercentages[1] = Double(second)/100.0
            tipPercentages[2] = Double(third)/100.0
            
            tipControl.setTitle("\(tipBase)%", forSegmentAtIndex:0)
            tipControl.setTitle("\(second)%", forSegmentAtIndex:1)
            tipControl.setTitle("\(third)%", forSegmentAtIndex:2)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



    @IBAction func onEditingChange(sender: AnyObject) {
//        var tipPercentages = [0.18, 0.2, 0.22]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var billAmount = (billField.text as NSString).doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
 
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
}

