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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    
}
    @IBAction func FarenheitFieldChange(_ sender: UITextField) {
    print("text=\(sender.text)"){
    }
}
}
