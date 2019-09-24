//
//  ViewController.swift
//  WorldTrotter
//
//  Created by Bolding, Michael C on 9/17/19.
//  Copyright © 2019 Bolding, Michael C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var celsiusLabel: UILabel!
    @IBOutlet weak var FahrenheitTextField: UITextField!
    var formatter: NumberFormatter = {
        let fmt = NumberFormatter()
        fmt.minimumFractionDigits = 0
        fmt.maximumFractionDigits = 1
        return fmt }()
    

    var fahrenheitValue: Measurement<UnitTemperature>? {
        didSet {
            if let celsiusValue = celsiusValue { celsiusLabel.text = "\(celsiusValue)"
                
            } else {
            celsiusLabel.text = "???"
        }
    }
    }
    var celsiusValue: Measurement<UnitTemperature>? {
        if let fahrenheitValue = fahrenheitValue {
            return fahrenheitValue.converted(to: .celsius)
        } else {
            return nil
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    
}
    @IBAction func FahrenheitFieldChanged(_ sender: UITextField) {
        if let text = sender.text, !text.isEmpty, let value = Double(text) {
            fahrenheitValue = Measurement(value: <#T##Double#>, unit: .fahrenheit)
        }
        else {
            celsiusLabel.text = "???"
        }
        }
    
    @IBAction func TapDetected(_ sender: UITapGestureRecognizer) {
      FahrenheitTextField.resignFirstResponder()
    }
}
