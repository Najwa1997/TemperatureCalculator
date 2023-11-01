//
//  ViewController.swift
//  Temperature Converter
//
//  Created by Nur Amani Najwa Mohd Nazhir on 31/10/2023.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0

    @IBOutlet weak var tempEntry: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var convLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func convertClicked(_ sender: Any) {
        if let result = tempEntry.text {
            if (result == "") {
                return
            }
            else {
                if let num = Double(result) {
                    let output = num * (9/5) + 32
                    resultLabel.text = String(output)
                    updateCountByOne()
                }
            }
        }
    }
    
    func updateCountByOne () {
        count += 1
        convLabel.text = String(count) + " Conversions"
    }
    
}

